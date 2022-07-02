import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());
}

class ListViewApp extends StatelessWidget {
  // This widget is the root of your application.
  const ListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sample App',
      home: ListViewAppPage(),
    );
  }
}

class ListViewAppPage extends StatefulWidget {
  const ListViewAppPage({Key? key}) : super(key: key);

  @override
  _ListViewAppPageState createState() => _ListViewAppPageState();
}

class _ListViewAppPageState extends State<ListViewAppPage> {
  List<Widget> widgets = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      widgets.add(getRow(i));
    }
  }

  Widget getRow(int i) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("Row $i"),
      ),
      onTap: () {
        setState(() {
          widgets.add(getRow(widgets.length));
          print('row $i');
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample App')),
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int index) {
          return getRow(index);
        },
      ),
    );
  }
}
