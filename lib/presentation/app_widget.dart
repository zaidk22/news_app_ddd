import 'package:flutter/material.dart';

import '../routes/routes.dart';
import 'life_cycle_watcher.dart';



class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return LifecycleWatcher(
      
        child: MaterialApp.router(
          routerConfig: appRouter.config(),
          debugShowCheckedModeBanner: false,
         
          title: 'Notes App',
              // theme: AppTheme.light,
              //     darkTheme: AppTheme.dark,
         
        ),
   
    );
  }
}
