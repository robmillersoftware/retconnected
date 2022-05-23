import 'package:retconnected/services/character_service.dart';

import 'services/storage_service_fake.dart';
import 'package:get_it/get_it.dart';
import 'services/storage_service.dart';

final getIt = GetIt.instance;

setupServiceLocator() {
  getIt.registerLazySingleton<StorageService>(() => StorageServiceFake());
  getIt.registerLazySingleton<CharacterService>(() => CharacterServiceImpl());
}
