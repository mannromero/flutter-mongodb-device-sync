import 'package:namer_app/src/core/injections/data_implements_injections.dart';
import 'package:namer_app/src/core/injections/data_source_injections.dart';
import 'package:namer_app/src/core/injections/use_cases_injections.dart';
import 'package:get_it/get_it.dart';

import 'injections/bloc_injections.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  BlocInjections();
  UseCasesInjections();
  DataSourceInjections();
  DataImplementsInjections();
}
