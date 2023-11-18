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
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 30.0,
      ),
      child:Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(35.0)),
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
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                bottom: 20.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                  width: 300.0,
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
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            subtitle: Text(
              widget.event.location,
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
                widget.event.date,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20.0,
                ),
            ),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      widget.event.description,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(
                      top:40.0,
                      left: 30.0,
                      bottom: 0.0
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey[300]!,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Text('Time: ${widget.event.time}',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if(widget.event.free)
                  OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue[200]!,
                      ),
                    ),
                    child: Text(
                      'FREE',
                      style: TextStyle(
                        color: Colors.blue[200],
                      ),
                    ),
                  ),
                Padding(padding: EdgeInsets.only(right: 10.0)),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.event.isFavorite = !widget.event.isFavorite;
                      widget.event.likeCount = widget.event.isFavorite
                          ? widget.event.likeCount + 1
                          : widget.event.likeCount - 1;
                    });
                  },
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      widget.event.isFavorite ? Colors.blue : Colors.white,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: widget.event.isFavorite ? Colors.red : Colors.blue[200]
                      ),
                      Text(
                        widget.event.likeCount.toString(),
                        style: TextStyle(
                          color: Colors.blue[200],
                        )
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right:10.0),
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
    )
    );
  }
}
