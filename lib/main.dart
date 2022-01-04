import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MediaPlayer());
}

class MediaPlayer extends StatelessWidget {
  const MediaPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              shadowColor: Colors.red[400],
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              expandedHeight: 250.0,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(image: AssetImage('images/audioplayers.jpg')),
                title: Text('Music Player',
                    style: TextStyle(fontSize: 20, color: Colors.black87)),
                centerTitle: true,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
                MusicTile(),
                const Divider(),
              ]),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'Music',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_filled),
              label: 'Now Playing',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              label: 'vidoes',
            ),
          ],
        ),
      ),
    );
  }

  ListTile MusicTile() {
    return ListTile(
      title: const Text('Play',
          textAlign: TextAlign.justify, style: TextStyle(fontSize: 20)),
      subtitle: const Text(
        'Play a sound',
        textAlign: TextAlign.justify,
      ),
      leading: const Icon(Icons.supervised_user_circle_sharp, size: 70),
      trailing: const Icon(Icons.menu),
      onTap: () {
        final AudioPlayer audioPlayer = AudioPlayer();
        audioPlayer.play(
          'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
        );
      },
    );
  }
}
