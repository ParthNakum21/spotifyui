import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/models/current_track_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spotify_ui/data/data.dart';

class TracksList extends StatelessWidget {
  final List<Song> tracks;

  const TracksList({
    Key? key,
    required this.tracks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingTextStyle:
          Theme.of(context).textTheme.overline!.copyWith(fontSize: 12.0),
      // dataRowHeight: 54.0,
      showCheckboxColumn: false,
      columns: const [
        DataColumn(label: Text('TITLE')),
        DataColumn(label: Text('ARTIST')),
        DataColumn(label: Text('ALBUM')),
        DataColumn(label: Icon(Icons.access_time)),
      ],
      rows: tracks.map((e) {
        return DataRow(
          cells: [
            DataCell(
              Text(e.title),
            ),
            DataCell(
              Text(e.artist),
            ),
            DataCell(
              Text(e.album),
            ),
            DataCell(
              Text(e.duration),
            ),
          ],
          //select song to play
          onSelectChanged: (_) =>
              context.read<CurrentTrackModel>().selectTrack(e),
        );
      }).toList(),
    );
  }
}
