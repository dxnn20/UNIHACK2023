import 'package:flutter/material.dart';
import 'components/drawer.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps'),
      ),
      drawer: AppDrawer(),
      body: const Center(
        child: Text(
          'Maps Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
