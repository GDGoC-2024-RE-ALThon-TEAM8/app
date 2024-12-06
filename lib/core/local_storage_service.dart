import 'package:team8/core/local_storage_base.dart';

class LocalStorageService {
  static const authToken = 'aaauthToken';

  final _keyValueStoarge = LocalStorageBase();

  Future<String> getAuthToken() async {
    return await _keyValueStoarge.getEncrypted(authToken) ?? '';
  }

  void setAuthToken(String token) {
    _keyValueStoarge.setEncrypted(authToken, token);
  }

  void resetKeys() {
    _keyValueStoarge
      ..clearData()
      ..clearEncrypted();
  }
}