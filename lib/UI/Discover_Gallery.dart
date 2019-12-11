import 'package:flutter/material.dart';
import 'package:re_sew/Models/Gallery_model.dart';

class GalleryWidget extends StatelessWidget {
  final Gallery gallery;

  const GalleryWidget({
    @required this.gallery,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(gallery.image, fit: BoxFit.cover),
              ),
              Material(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(8)),
                ),
              )
            ],
          ),
        ],
      );
}
