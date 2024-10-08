import 'package:hive_flutter/hive_flutter.dart';
import 'package:messenger/base/dependency/local_storage/local_storage_key.dart';

class LocalStorageService {
  late final Box box;
  LocalStorageService();

  Future<void> initialize() async {
    await Hive.initFlutter();
    box = await Hive.openBox(
      'app',
    );
  }

  Future put(LocalStorageKey key, dynamic value) {
    return box.put(key.name, value);
  }

  String? getString(LocalStorageKey key) {
    return box.get(key.name) as String?;
  }

  bool? getBool(LocalStorageKey key) {
    return box.get(key.name) as bool?;
  }

  int? getInt(LocalStorageKey key) {
    return box.get(key.name) as int?;
  }

  List<String>? getStringList(LocalStorageKey key) {
    return box.get(key.name) as List<String>?;
  }

  Future delete(LocalStorageKey key) {
    return box.delete(key.name);
  }

  bool containsKey(LocalStorageKey key) {
    return box.containsKey(key.name);
  }

  Future<int> clear() {
    return box.clear();
  }
}
