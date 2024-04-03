const yourLibrary = [
  'Made For You',
  'Recently Played',
  'Liked Songs',
  'Albums',
  'Artists',
  'Podcasts',
];

const playlists = [
  'Today\'s Top Hits',
  'Gym Playlist',
  'Chill',
  'lofi hip hop music - beats to relax/study to',
  'On Repeat',
  'Summer Rewind',
  'Sothing Songs',
];

class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
  });
}

const _lofihiphopMusic = [
  Song(
    id: '0',
    title: 'Elon Musk and Mark Zukerberg',
    artist: 'Lex Fridman',
    album: 'Lex\'s Podcast',
    duration: '4:30:15',
  ),
  Song(
    id: '1',
    title: 'Let Her Go',
    artist: 'Ed Sheeran',
    album: 'Passenger',
    duration: '2:18',
  ),
  Song(
    id: '2',
    title: 'Far Away',
    artist: 'Mila Coolness',
    album: 'Silent River',
    duration: '2:39',
  ),
  Song(
    id: '3',
    title: 'Call You Soon',
    artist: 'Louk, Glimlip',
    album: 'Can We Talk',
    duration: '2:35',
  ),
  Song(
    id: '4',
    title: 'Husn',
    artist: 'Anuv Jain',
    album: 'Feelings',
    duration: '2:15',
  ),
];

class Playlist {
  final String id;
  final String name;
  final String imageURL;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Song> songs;

  const Playlist({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.description,
    required this.creator,
    required this.duration,
    required this.followers,
    required this.songs,
  });
}

const lofihiphopPlaylist = Playlist(
  id: '5-playlist',
  name: 'Podcast',
  imageURL: 'assets/lofigirl.jpg',
  description:
      'Coversation about science, technology, history, philosophy, AI, etc',
  creator: 'Parth N',
  duration: '28 min',
  followers: '72000',
  songs: _lofihiphopMusic,
);
