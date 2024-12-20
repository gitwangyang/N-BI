/// 请求接口的配置项
class RequestConfig {
  static const String baseUrl = "https://example.com/api"; // API 根地址
  static const int receiveTimeout = 10; // 接收超时时间（秒）
  static const int connectTimeout = 10; // 请求超时时间（秒）
  static const int sendTimeout = 8; // 发送超时时间（秒）
  static const int successCode = 200; // API 成功返回的状态码
}