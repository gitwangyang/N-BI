import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:n_bi/utils/log_utils.dart';
import 'package:n_bi/utils/ui/encrypt_utils.dart';

const String get = 'GET';
const String post = 'POST';
/// success status code
const int statusCodeSuccess = 200;

///网络拦截器 request/response
class HttpInterceptor extends InterceptorsWrapper {
  late DateTime startTime;
  late DateTime endTime;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    startTime = DateTime.now();

    if (kDebugMode) {
      LogUtils.v('-------- Http Interceptor start --------');
    }
    // if (options.method == get && options.queryParameters.isNotEmpty) {
    //   options.queryParameters = {
    //     'data': EncryptUtils.encodeBase64(jsonEncode(options.queryParameters))
    //   };
    //   LogUtils.v('Get--queryParameters: ${options.queryParameters}');
    // } else if (options.method == post && options.data is FormData && options.data != null) {
    //   options.data = {
    //     'data': EncryptUtils.encodeBase64(jsonEncode(options.data)),
    //   };
    //   LogUtils.v('Post--data: ${options.data}');
    // }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    endTime = DateTime.now();
    int duration = endTime.difference(startTime).inMilliseconds;

    // BaseResponseEntity res = BaseResponseEntity.fromJson(response.data);  // 解析数据
    // response.data = res.data;

    if (kDebugMode) {
      LogUtils.v('-------- Http Interceptor end: $duration 毫秒 --------');
    }
    try {
      if (response.data is String) {
        // response.data = EncryptUtils.decodeBase64(response.data);
        response.data = jsonDecode(response.data);
      }
      responseLog(response);
      super.onResponse(response, handler);
    } catch (e) {
      responseLog(response);
      super.onResponse(response, handler);
    }
  }

  /// 输出日志
  void responseLog(Response response) {
    //输出请求地址
    LogUtils.v('\nhttpResponse: ${response.requestOptions.path}');
    //输出请求参数
    final request = response.requestOptions.data ?? response.requestOptions.queryParameters;
    if(request != null && request is! FormData && request['data'] != null) {
      request['data'] = EncryptUtils.decodeBase64(request['data']);
      LogUtils.v('\nhttpResponse request: ${request['data']}');
    }else{
      LogUtils.v('\nhttpResponse request: $request');
    }
    //输出返回data
    LogUtils.v('\nhttpResponse data: ${response.data}');
  }
}
