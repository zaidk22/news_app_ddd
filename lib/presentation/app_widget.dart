import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_bloc/application/news/news_bloc.dart';

import '../injection.dart';
import '../routes/routes.dart';
import 'life_cycle_watcher.dart';



class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsBloc>(
        create: (context) {
           return getIt<NewsBloc>()..add(const NewsEvent.initialized());
        }),
      ],
    
     child: LifecycleWatcher(
      
        child: MaterialApp.router(
          routerConfig: appRouter.config(),
          debugShowCheckedModeBanner: false,
         
          title: 'Notes App',
              // theme: AppTheme.light,
              //     darkTheme: AppTheme.dark,
         
        ),
   
    )
  );
  
  }
}
