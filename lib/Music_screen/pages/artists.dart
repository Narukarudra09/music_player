import 'package:flutter/material.dart';

class Artists extends StatefulWidget {
  const Artists({super.key});

  @override
  State<Artists> createState() => _ArtistsState();
}

class _ArtistsState extends State<Artists> {
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
            title: const Text("Artist Name"),
            titleTextStyle: TextStyle(
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.black
                    : Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                letterSpacing: 1.7),
            subtitle: const Text("no of album"),
            subtitleTextStyle: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            indent: 80,
            endIndent: 20,
          );
        },
      ),
    );
  }
}
