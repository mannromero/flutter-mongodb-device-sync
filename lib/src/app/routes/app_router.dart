import 'package:auto_route/auto_route.dart';
import 'package:namer_app/src/app/pages/todo/todo_page_view.dart';
import 'package:namer_app/src/app/routes/app_router.gr.dart';
import 'package:namer_app/src/app/pages/home/home_page_view.dart';

@AutoRouterConfig()      
class AppRouter extends $AppRouter {      
   
 @override      
  List<AutoRoute> get routes =>
      [
        AutoRoute(page: HomeRoute.page, path: HomePage.route, initial: true),
        AutoRoute(page: TodoRoute.page, path: TodoPage.route)
      ];
}
