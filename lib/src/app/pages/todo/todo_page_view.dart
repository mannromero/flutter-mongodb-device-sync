import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/src/app/widgets/navigation.dart';

@RoutePage()
class TodoPage extends StatefulWidget {
  const TodoPage({super.key});
  static const route = "/todo";

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
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
              title: const Text('Todo Page'),
            ),
            drawer: const Navigation(),
            body: Text('Home Page')
    );
  }
}