import 'package:get_storage/get_storage.dart';

class ALocalStorage {
  static final ALocalStorage _instance = ALocalStorage._internal();

  factory ALocalStorage() {
    return _instance;
  }

  ALocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveDate<A>(String key, A value) async {
    await _storage.write(key, value);
  }

  A? readData<A>(String key) {
    return _storage.read<A>(key);
  }

  Future<void> removeDate(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
