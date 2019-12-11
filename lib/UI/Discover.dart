import 'package:flutter/material.dart';
import 'package:re_sew/UI/Discover_Gallery.dart';
import 'package:re_sew/Models/Gallery_model.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:re_sew/Utils/text_style.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Discover'),
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Text(
              'Browse images from the community to find inspiration for future projects.',
              style: Style.boldCopyTextStyle,
            ),
          ),
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(12),
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            itemCount: gallery.length,
            itemBuilder: (BuildContext context, int index) =>
                GalleryWidget(gallery: gallery[index]),
            staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
          ),
        ]));
  }
}
