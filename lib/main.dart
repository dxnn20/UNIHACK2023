import 'package:flutter/material.dart';
import 'login_page.dart';

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
      home: const LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: widget.buildAppBar(context),


      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF479FD5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.calendar_today),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

        _Card(
        title: 'Free Event',
          description: 'Enjoy this amazing free event!',
          isFree: true,
          imagePath: 'assets/free_event_image.jpg',
        ),

        _Card(
        title: 'Paid Event',
        description: 'Don\'t miss out on this exclusive event.',
        isFree: false,
        imagePath: 'assets/paid_event_image.jpg',
      ),

      _Card(
      title: 'Exciting Workshop',
      description:
      'Join us for a hands-on workshop where you can learn new skills and techniques. This is a fantastic opportunity to enhance your knowledge!',
      isFree: false,
      imagePath: 'assets/workshop_image.jpg',
    ),

    _Card(
      title: 'Special Performance',
      description: 'Experience a one-of-a-kind performance by talented artists.',
      isFree: true,
      imagePath: 'assets/special_performance_image.jpg',
    ),

    ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child:  const Icon(Icons.add),
      ),

    );
  }
}

class _Card extends StatelessWidget {
  final String title;
  final String description;
  final bool? isFree;
  final String? imagePath;

  const _Card({
    Key? key,
    required this.title,
    required this.description,
    this.isFree,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // You can customize the appearance of the card using various properties
      color: const Color(0xFF479FD5),
      elevation: 5.0,
      shadowColor: const Color(0xFF4682A9),
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0, width: 300.0),
             Text(
              description, // Text to display
              style: const TextStyle(fontSize: 16.0),
            ),
            if(isFree!)
              Container(
                padding: const EdgeInsets.all(5.0),
                width: 100.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF479FF9),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                alignment: Alignment.center,

              child: const Text(
                'FREE',

                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  overflow: TextOverflow.ellipsis,
                  shadows: [
                    Shadow(
                      color: Color(0xFFE0E0E0),
                      offset: Offset(2.0, 1.0),
                      blurRadius: 20.0,
                    ),
                  ],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD7D7D7),
                ),
              ),
              ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(
                      backgroundColor:  const Color(0xFF4682A9),
                      elevation: 5
                  ),
                  onPressed: (){
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                      return const EventDetailsSheet();
                      },
                    );
                  },
                  child: const Text('View',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD7D7D7),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EventDetailsSheet extends StatelessWidget {
  const EventDetailsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child : DraggableScrollableSheet(
      initialChildSize: 0.8, // Initial size when opened
      minChildSize: 0.1, // Minimum size when closed
      maxChildSize: 1.0, // Maximum size when fully opened
      expand: true, // Set to true if you want to expand the sheet initially
      builder: ( context,  scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
            borderRadius: const BorderRadius.all(Radius.circular(40.0)),
            child: Image.asset(
              'lib/POSTARE.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.1,
            ),
          ),
          ),
        );
        },
      ),
    );
  }
}