import 'package:retconnected/services/storage_service.dart';

import 'storage_service.dart';

class StorageServiceFake extends StorageService {
  int _counter = 0;

  @override
  Future<int> getCounterValue() async {
    return _counter;
  }

  @override
  Future<void> saveCounterValue(int value) async {
    _counter++;
  }
}