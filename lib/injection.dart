import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) => getIt.init(environment: env);
