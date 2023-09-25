import 'package:injectable/injectable.dart';

import 'package:test_codemagic/models/index.dart';
import 'package:test_codemagic/services/http/http_client.dart';

@Injectable(scope: 'auth')
class UserRepository {
  final HttpClient httpClient;

  UserRepository(this.httpClient);

  Future<UserProfile> getUserProfile() async {
    return UserProfile.fromJson({'userName': 'test'});
  }
}
