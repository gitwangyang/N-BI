import 'package:modular_interfaces/modular_interfaces.dart';

/// 通过[ModularArguments]返回[RouteObjProvider]
typedef RouteProvider = RouteObjProvider Function(ModularArguments args);

/// RouteProvider转换器
abstract class RouteObjProvider {
  /// 将对象转换成T
  T as<T>() => this as T;
}

/// 空参数
ModularArguments emptyArgs() => ModularArguments(uri: Uri.parse('/'));
