import 'package:flutter/material.dart';
import 'package:unihack/auth/login_or_register.dart';
import 'package:unihack/components/card.dart';
import 'components/drawer.dart';
import 'components/event.dart';
import 'components/button.dart';

class User {
  final String name;
  final String email;
  final String? profileImage;

  User({
    required this.name,
    required this.email,
    this.profileImage,
  });
}

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlanIT',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x004682a9)),
        useMaterial3: true,
      ),
      home: const LoginOrRegister(),
    );
  }
}

class MyHomePage extends StatefulWidget {
    MyHomePage({super.key, required this.title});

  final String title;

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      shadowColor: const Color(0xFF4682A9),
      elevation: 5.0,
      backgroundColor: const Color(0xFF479FD5),
      title: Text(title),
    );
  }

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State< MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: widget.buildAppBar(context),

      drawer: AppDrawer(),

      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          EventCard(
            event: Event(
              name: 'Event 1',
              description: 'This is a description of event 1',
              location: 'Location 1',
              date: '01/01/2021',
              time: '12:00',
              image: 'POSTARE.png',
              category: 'Category 1',
              free: true,
            ),
          ),
          EventCard(
            event: Event(
              name: 'Event 2',
              category: 'Category 2',
              description: 'This is a description of event 2This is a description of event 2This is a description of event 2This is a description of event 2This is a description of event 2This is a description of event 2This is a description of event 2This is a description of event 2This is a description of event 2This is a description of event 2This is a description of event 2This is a description of event 2This is a description of event 2',
              location: 'Location 2',
              date: '02/02/2021',
              time: '13:00',
              free: false,
            ),
          ),
          EventCard(
            event: Event(
              category: 'Category 3',
              name: 'Event 3',
              description: 'This is a description of event 3',
              location: 'Location 3',
              date: '03/03/2021',
              time: '14:00',
              free: true,
            ),
          ),
          EventCard(
            event: Event(
              category: 'Category 4',
              name: 'Event 4',
              description: 'This is a description of event 4',
              location: 'Location 4',
              date: '04/04/2021',
              time: '15:00',
              free: false,
            ),
          ),
          EventCard(
            event: Event(
              category: 'Category 5',
              name: 'Event 5',
              description: 'This is a description of event 5',
              location: 'Location 5',
              date: '05/05/2021',
              time: '16:00',
              free: true,
            ),
          ),
          EventCard(
            event: Event(
              category: 'Category 6',
              name: 'Event 6',
              description: 'This is a description of event 6',
              location: 'Location 6',
              date: '06/06/2021',
              time: '17:00',
              free: false,
            ),
          ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'That\'s it for now!',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
    ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child:  const Icon(Icons.add),
      ),

    );
  }
}
