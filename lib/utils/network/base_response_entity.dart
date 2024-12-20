/// Response数据基类
class BaseResponseEntity<T> {
  int? code;
  String? message;
  T? data;

  BaseResponseEntity({
    required this.code,
    required this.message,
    required this.data,
  });

	bool isSuccess() => code == 200;

  factory BaseResponseEntity.fromJson(Map<String, dynamic> json) =>
      BaseResponseEntity(
        code: json['code'],
        message: json['message'],
        data: json['data'],
      );

  Map<String, dynamic> toJson() => {
    'code': code,
    'message': message,
    'data': data,
  };
}
