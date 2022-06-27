import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleWidget extends StatelessWidget {
  // This widget is the root of your application.
  const ToggleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sample App',
      home: ToggleWidgetPage(),
    );
  }
}

class ToggleWidgetPage extends StatefulWidget {
  const ToggleWidgetPage({Key? key}) : super(key: key);

  @override
  _ToggleWidgetPageState createState() => _ToggleWidgetPageState();
}

class _ToggleWidgetPageState extends State<ToggleWidgetPage> {
  // Default value for toggle
  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  Widget _getToggleChild() {
    if (toggle) {
      return const Text('Toggle One');
    }
    return CupertinoButton(
      onPressed: () {},
      child: const Text('Toggle Two'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample App')),
      body: Center(child: _getToggleChild()),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: const Icon(Icons.update),
      ),
    );
  }
}
