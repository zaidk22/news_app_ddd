
import 'package:auto_route/auto_route.dart';
import './routes.gr.dart';


@AutoRouterConfig(  replaceInRouteName: "Page,Route",)      
class AppRouter extends $AppRouter {      
   
 @override      
 List<AutoRoute> get routes => [  

  AutoRoute(page: NewsRoute.page,initial: true),
  AutoRoute(page: NewsDetailsRoute.page)    


  ];    
}