import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants.dart';

abstract class Dependency {
  static Provider<Client> get client => _clientProvider;
  static Provider<Database> get database => _databaseProvider;
  static Provider<Account> get account => _accountProvider;
  static Provider<Realtime> get realtime => _realtimeProvider;
}

final _clientProvider = Provider<Client>(
  (ref) => Client()
    ..setProject(appWriteProjectId)
    ..setSelfSigned(status: true)
    ..setEndpoint(appWriteEndpoint),
);

final _databaseProvider =
    Provider<Database>((ref) => Database(ref.read(_clientProvider)));

final _accountProvider = Provider<Account>(
  (ref) => Account(ref.read(_clientProvider)),
);

final _realtimeProvider =
    Provider<Realtime>((ref) => Realtime(ref.read(_clientProvider)));
