import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app_bloc/injection.config.dart';
final GetIt getIt = GetIt.instance;
@InjectableInit()
void configureInjection(String env) => getIt.init(
      environment: env,
    );
