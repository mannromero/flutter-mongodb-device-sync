import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/src/app/widgets/navigation.dart';

@RoutePage()    
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const route = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              actions: [
                // if (state.selectedDisassembly != null)
                //   FormButtonDelete(onDelete: () {
                //     handleDelete(context);
                //     context.router.pop();
                //   })
              ],
              // leading: FormBackButton(onNavigate: () => context.router.pop()),
              titleSpacing: 16.0,
              title: const Text('My Home Page'),
            ),
            drawer: const Navigation(),
            body: Text('Home Page')
    );
    }
  }