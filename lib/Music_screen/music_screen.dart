import 'package:flutter/material.dart';
import 'package:music_player/Music_screen/pages/tracks.dart';

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
      animationDuration: const Duration(milliseconds: 550),
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Music"),
          elevation: 0,
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            overlayColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
                return states.contains(WidgetState.focused)
                    ? null
                    : Colors.transparent;
              },
            ),
            labelStyle: TextStyle(fontSize: 16),
            labelColor: Theme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white,
            unselectedLabelColor: Colors.grey[700],
            unselectedLabelStyle: TextStyle(fontSize: 12),
            dividerHeight: 0,
            indicator: const BoxDecoration(),
            tabs: const [
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
        ),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : Colors.grey[900]),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: const TabBarView(children: [
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
