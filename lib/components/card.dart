import 'package:flutter/material.dart';
import 'package:unihack/components/event.dart';

class EventCard extends StatefulWidget {
  final Event event;

  EventCard({required this.event});

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      elevation: 5.0,
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Padding(
              padding: EdgeInsets.all(15.0),
          ),
        ClipRRect(
          borderRadius: BorderRadius.circular(24.0),
          child: SizedBox.fromSize(
            size: const Size.fromRadius(150),
            child: Image.asset(
              //PLACEHOLDER IMAGE
              'lib/POSTARE.png',
              fit: BoxFit.cover
            ),
          ),
        ),

          ListTile(
            title: Text(widget.event.name),
            subtitle: Text(widget.event.location),
            trailing: Text(widget.event.date),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(widget.event.description),
                  const SizedBox(height: 10.0),
                  Text(widget.event.time),
                  const SizedBox(height: 10.0),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.favorite,
                    color: Colors.blue[100],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Text(
                      isExpanded ? 'Show Less' : 'Show More',
                      style: TextStyle(
                        color: Colors.blue[200],
                      ),
                    ),
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
