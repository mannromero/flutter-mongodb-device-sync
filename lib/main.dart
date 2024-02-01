import 'package:flutter/material.dart';
import 'package:namer_app/src/app/routes/app_router.dart';
import 'package:namer_app/src/app/helpers/app_colors.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {                        
  final _appRouter = AppRouter();            
            
  @override            
  Widget build(BuildContext context){            
    return MaterialApp.router(            
      routerConfig: _appRouter.config(),
      theme: ThemeData(
              scrollbarTheme: ScrollbarThemeData(
                  thumbColor:
                      MaterialStateProperty.all( Color(primaryColor))),
              appBarTheme: const AppBarTheme(
                  backgroundColor: Color(primaryColor),
                  foregroundColor: Colors.white),
              scaffoldBackgroundColor: const Color.fromARGB(255, 220, 237, 240),
              primarySwatch:
                  const MaterialColor(primaryColor, primaryColorCode),
              fontFamily: 'Inter',
              colorScheme: const ColorScheme(
                background: Colors.white,
                onBackground: Color(primaryColor),
                surface: Colors.white,
                onSurface: Color(primaryColor),
                error: Colors.red,
                onError: Colors.white,
                brightness: Brightness.light,
                onPrimary: Color(lightBG),
                primary: Color(primaryColor),
                secondary: Color(primaryColor),
                onSecondary: Colors.white,
              ),
              useMaterial3: true),         
    );            
  }            
}        