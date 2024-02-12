// import 'package:auto_route/auto_route.dart';
// import 'package:kahero/core/autoroutes/routes.gr.dart';
// import 'package:kahero/data/helpers/firebase_helper.dart';

// class AuthGuard extends AutoRouteGuard {
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     // the navigation is paused until resolver.next() is called with either
//     // true to resume/continue navigation or false to abort navigation
//     if (getCurrentUser() != null && getFirebaseProjectId().isNotEmpty) {
//       // if user is authenticated we continue
//       resolver.next(true);
//     } else {
//       // we redirect the user to our login page
//       // tip: use resolver.redirect to have the redirected route
//       // automatically removed from the stack when the resolver is completed
//       resolver.redirect(
//         const AuthSignInRoute(),
//       );
//     }
//   }
// }
