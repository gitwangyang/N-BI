
import 'package:n_bi/utils/network/http.dart';
import 'package:n_bi/utils/network/http_interceptor.dart';

import 'api_path.dart';

/// 服务端api调用
class ApiService {
  ApiService();

  // 关注数量
  Http<String> httpFriendContacts({
    required num userId,
  }) =>
      Http<String>(
        requestType: post,
        path: friendContacts,
        data: {
          'userId': userId.toString(),
        },
      );
}