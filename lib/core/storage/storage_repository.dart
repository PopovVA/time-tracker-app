typedef StorageKey = String;
typedef JsonValue = String;

abstract class IStorageRepository {
  Future<void> init();
  Future<JsonValue?> getOne(StorageKey key);
  Future<List<JsonValue>> getAll();
  Future<void> removeOne(StorageKey key);
  Future<void> removeAll();
  Future<void> writeOne(StorageKey key, JsonValue value);
}
