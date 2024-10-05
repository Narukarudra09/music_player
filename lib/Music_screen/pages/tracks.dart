import 'package:flutter/material.dart';

class Tracks extends StatefulWidget {
  const Tracks({super.key});

  @override
  State<Tracks> createState() => _TracksState();
}

class _TracksState extends State<Tracks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: ListView.separated(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Icon(
                  Icons.music_note_sharp,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.grey[500]
                      : Colors.grey[500],
                ),
              ),
            ),
            title: const Text("Song Name"),
            titleTextStyle: TextStyle(
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.black
                    : Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                letterSpacing: 1.7),
            subtitle: const Text("Artist Name"),
            subtitleTextStyle: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
            ),
            trailing: const Icon(Icons.more_vert),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            indent: 80,
            endIndent: 20,
          );
        },
      ),
    );
  }
}
