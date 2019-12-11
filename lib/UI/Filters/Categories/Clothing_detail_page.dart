import 'package:flutter/material.dart';
import 'package:re_sew/Models/Categories/clothing_model.dart';
import 'package:re_sew/Utils/Colour.dart';
import 'package:re_sew/Utils/text_style.dart';

class ClothingDetailPage extends StatefulWidget {
  final Clothing clothingList;

  ClothingDetailPage(this.clothingList);

  @override
  _ClothingDetailPageState createState() => _ClothingDetailPageState();
}

class _ClothingDetailPageState extends State<ClothingDetailPage> {
  Widget get projectImage {
    return Container(
      height: 250.0,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(widget.clothingList.image),
          fit: BoxFit.fitWidth,
        ),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );
  }

  Widget get author {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 8, 8, 0),
        child: Text(
          'Uploaded by: ${widget.clothingList.author}',
          style: Style.smallCopyTextStyle,
        ));
  }

  Widget get category {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: Wrap(alignment: WrapAlignment.spaceEvenly, children: <Widget>[
        Text(
          '${widget.clothingList.category}',
          style: Style.boldCopyTextStyle,
        ),
        Text(
          '${widget.clothingList.time}',
          style: Style.boldCopyTextStyle,
        ),
        Text(
          '${widget.clothingList.material}',
          style: Style.boldCopyTextStyle,
        ),
        Text(
          '${widget.clothingList.difficulty}',
          style: Style.boldCopyTextStyle,
        ),
      ]),
    );
  }

  Widget get projectDetails {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'What you need',
              style: Style.header2TextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.tools}',
              style: Style.mainCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Instructions',
              style: Style.header2TextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Step 1',
              style: Style.boldCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(widget.clothingList.image1),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.step1}',
              style: Style.mainCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Step 2',
              style: Style.boldCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(widget.clothingList.image2),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.step2}',
              style: Style.mainCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Step 3',
              style: Style.boldCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(widget.clothingList.image3),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.step3}',
              style: Style.mainCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Step 4',
              style: Style.boldCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(widget.clothingList.image4),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.step4}',
              style: Style.mainCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Step 5',
              style: Style.boldCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(widget.clothingList.image5),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.step5}',
              style: Style.mainCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Step 6',
              style: Style.boldCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(widget.clothingList.image6),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.step6}',
              style: Style.mainCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Step 7',
              style: Style.boldCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(widget.clothingList.image7),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.step7}',
              style: Style.mainCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Step 8',
              style: Style.boldCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(widget.clothingList.image8),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.step8}',
              style: Style.mainCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Step 9',
              style: Style.boldCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(widget.clothingList.image9),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.step9}',
              style: Style.mainCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Step 10',
              style: Style.boldCopyTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              height: 200.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(widget.clothingList.image10),
                  fit: BoxFit.fitWidth,
                ),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              '${widget.clothingList.step10}',
              style: Style.mainCopyTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget get projectInstructions {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: projectImage,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 8, 0),
          child: author,
        ),
        category,
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Text(
            widget.clothingList.description,
            style: Style.mainCopyTextStyle,
          ),
        ),
        projectDetails,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: brand_01Color,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('${widget.clothingList.name}'),
      ),
      body: projectInstructions,
    );
  }
}
