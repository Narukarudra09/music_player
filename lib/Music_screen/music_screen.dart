import 'package:flutter/material.dart';
import 'package:music_player/Music_screen/util/tracks.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      animationDuration: const Duration(milliseconds: 350),
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: const TabBar(
            dividerHeight: 0,
            indicator: BoxDecoration(),
            tabs: [
              Tab(
                child: Text("Artists"),
              ),
              Tab(
                child: Text("Playlist"),
              ),
              Tab(
                child: Text("Tracks"),
              ),
              Tab(
                child: Text("Albums"),
              ),
            ],
          ),
          title: const Text("Music"),
        ),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : Colors.grey[900]),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [
            Text("Songs"),
            Text("Playlist"),
            Tracks(),
            Text("Songs"),
          ]),
        ),
      ),
    );
  }
}
