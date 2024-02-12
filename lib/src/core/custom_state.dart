// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:kahero/app/pages/pin_login/pin_login_page.dart';
// import 'package:kahero/app/pages/startup/bloc/startup_bloc.dart';

// abstract class CustomState<T extends StatefulWidget> extends State<T> {
//   @override
//   void initState() {
//     WidgetsBinding.instance.addObserver(LifecycleEventHandler(
//       resumeCallBack: () async => setState(() {
//         final startupBloc = BlocProvider.of<StartupBloc>(context);
//         if (startupBloc.state.enablePin) {
//           context.router.replaceNamed(PinLoginPage.route);
//         } else {
//           context
//               .read<StartupBloc>()
//               .add(const StartupEvent.setEnabledPin(true));
//         }
//       }),
//       suspendingCallBack: () async => setState(() {}),
//     ));

//     super.initState();
//   }
// }

// class LifecycleEventHandler extends WidgetsBindingObserver {
//   final AsyncCallback resumeCallBack;
//   final AsyncCallback suspendingCallBack;

//   LifecycleEventHandler({
//     required this.resumeCallBack,
//     required this.suspendingCallBack,
//   });

//   @override
//   Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
//     switch (state) {
//       case AppLifecycleState.resumed:
//         await resumeCallBack();
//         break;
//       case AppLifecycleState.hidden:
//       case AppLifecycleState.inactive:
//       case AppLifecycleState.paused:
//       case AppLifecycleState.detached:
//         await suspendingCallBack();
//         break;
//     }
//   }
// }
