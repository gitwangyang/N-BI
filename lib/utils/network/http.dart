import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:n_bi/utils/network/base_response_entity.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../base/configs.dart';
import '../../base/request_config.dart';
import '../../generated/l10n.dart';
import '../toast_utils.dart';
import 'http_interceptor.dart';

final Dio dio = Dio()
  ..interceptors.add(
    // 请求拦截器，处理请求和回调
    HttpInterceptor(),
  )
  ..interceptors.add(
      // 日志拦截器，调试使用
      PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseHeader: true,
    responseBody: true,
    error: true,
    compact: true,
    maxWidth: 90,
  ));

class Http<T> {
  // 请求类型，get/post
  final String requestType;

  // 接口路径
  final String? path;
  final String? completePath; //完整的utl地址
  // 数据
  final Object? data;

  // 入参
  final Map<String, dynamic>? queryParameters;

  // 配置项
  final Options? options;

  // 取消token
  final CancelToken? cancelToken;

  //onSendProgress
  final ProgressCallback? onSendProgress;

  //onReceiveProgress
  final ProgressCallback? onReceiveProgress;

  /// 构造函数
  Http({
    required this.requestType,
    this.path,
    this.completePath,
    this.data,
    this.queryParameters,
    this.options,
    this.cancelToken,
    this.onSendProgress,
    this.onReceiveProgress,
  });

  void observer({
    Function(BaseResponseEntity<T> response)? onResListener,
    Function(T data)? onDataListener,
    Function(Exception e)? onErrorListener,
    Function()? onCompleteListener,
  }) =>
      HttpObserver<T>(
        requestAction: () => _httpRequest(),
        onResListener: onResListener,
        onDataListener: onDataListener,
        onErrorListener: onErrorListener,
        onCompleteListener: onCompleteListener,
      );

  getOption() =>
      options ??
      BaseOptions(
        //请求基地址
        baseUrl: RequestConfig.baseUrl,
        receiveTimeout: const Duration(seconds: 10),
        connectTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 8),
        validateStatus: (_) => true,
        // Http请求头.
        headers: headers(),
        contentType: 'application/json; charset=utf-8',

        /// 如果想以文本(字符串)格式接收响应数据，请使用 `PLAIN`
        responseType: ResponseType.json,
      );

  Object? dataCovert() {
    if (data == null) return null;
    if (data is FormData && (data as FormData).files.isNotEmpty == true) {
      return data;
    }
    return jsonEncode(data);
  }

  /// 全路径拼接
  String pathSplicing() => completePath ?? '${RequestConfig.baseUrl}$path';

  /// 添加头信息
  Map<String, dynamic>? headers() {
    Map<String, String>? map = {};
    // 当前应用版本+使用设备类型
    String info = '';
    if (Platform.isAndroid) {
      info = 'appVersion:${Configs.version},os:android';
    } else if (Platform.isIOS) {
      info = 'appVersion:${Configs.version},os:ios';
    }
    map['platform'] = info;
    map['package_name'] = Configs.packageName;
    // map['authorization'] = userCenter?.token?.accessToken;

    if (kDebugMode) {
      map.forEach((key, value) {
        // ignore: avoid_print
        print('Key: $key, Value: $value');
      });
    }

    return map;
  }

  Future<dynamic> _httpRequest() async {
    //触发版本检测
    // AppUpdateCheck.instance().checkUpdate();
    if (requestType == post) {
      return dio.post(
        pathSplicing(),
        data: dataCovert(),
        queryParameters: queryParameters,
        options: getOption(),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    }
    return dio.get(
      pathSplicing(),
      data: dataCovert(),
      queryParameters: queryParameters,
      options: getOption(),
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }
}

class HttpObserver<T> {
  final Function(BaseResponseEntity<T> response)? onResListener;
  final Function(T data)? onDataListener;
  final Function(Exception e)? onErrorListener;
  final Function()? onCompleteListener;

  HttpObserver({
    required Future<dynamic> Function() requestAction,
    this.onResListener,
    this.onDataListener,
    this.onErrorListener,
    this.onCompleteListener,
  }) {
    _toRequest(requestAction);
  }

  Future<void> _toRequest(Future<dynamic> Function() requestAction) async {
    try {
      final response = await requestAction.call();
      _resultCallBack(response: response);
    } on Exception catch (e) {
      ToastUtils.toastUtil(S.current!.net_work_error);
      onErrorListener?.call(e);
    }
  }

  void _resultCallBack({
    required Response<dynamic> response,
  }) {
    try {
      final baseRes = BaseResponseEntity<T>.fromJson(response.data);
      if (baseRes.message != null) {
        ToastUtils.toastUtil(baseRes.message.toString());
      }
      //登录失效
      // if (baseRes.code == 401) {
      //   userCenter.clearUserData();
      //   const PwLoginPage().replacePage();
      //   return;
      // }
      onResListener?.call(baseRes);
      if (baseRes.data != null && baseRes.isSuccess()) {
        onDataListener?.call(baseRes.data as T);
      }
    } on Exception catch (e) {
      ToastUtils.toastUtil(S.current!.net_work_error);
      onErrorListener?.call(e);
    } finally {
      onCompleteListener?.call();
    }
  }
}
