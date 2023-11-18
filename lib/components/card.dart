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
      borderOnForeground: true,

      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: Image.asset(
                  'lib/POSTARE.png',
                  height: 300.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20.0,
                right: 0.0,
                child: Container(
                  width: 300.0,
                  color: Colors.black54,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 20.0,
                  ),
                  child: Text(
                    widget.event.name,
                    style: const TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            subtitle: Text(widget.event.location),
            trailing: Text(widget.event.date),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(.0),
              child: Column(
                children: [
                  Text(widget.event.description),
                  const SizedBox(height: 10.0),
                  Text('Time: ${widget.event.time}'),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Icon(
                    Icons.favorite,
                    color: Colors.blue[100],
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                  ElevatedButton(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
