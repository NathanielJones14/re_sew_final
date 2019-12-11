import 'package:flutter/material.dart';
import 'package:re_sew/Models/Materials/synthetic_model.dart';
import 'package:re_sew/Utils/Colour.dart';
import 'package:re_sew/Utils/text_style.dart';

class SyntheticDetailPage extends StatefulWidget {
  final Synthetic syntheticList;

  SyntheticDetailPage(this.syntheticList);

  @override
  _SyntheticDetailPageState createState() => _SyntheticDetailPageState();
}

class _SyntheticDetailPageState extends State<SyntheticDetailPage> {
  Widget get projectImage {
    return Container(
      height: 250.0,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(widget.syntheticList.image),
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

  // The rating section that says ★ 10/10.
  Widget get category {
    // Use a row to lay out widgets horizontally.
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: Wrap(alignment: WrapAlignment.spaceEvenly, children: <Widget>[
        Text(
          '${widget.syntheticList.category}',
          style: Style.boldCopyTextStyle,
        ),
        Text(
          '${widget.syntheticList.time}',
          style: Style.boldCopyTextStyle,
        ),
        Text(
          '${widget.syntheticList.material}',
          style: Style.boldCopyTextStyle,
        ),
        Text(
          '${widget.syntheticList.difficulty}',
          style: Style.boldCopyTextStyle,
        ),
      ]),
    );
  }

  Widget get author {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 8, 8, 0),
        child: Text(
          'Uploaded by: ${widget.syntheticList.author}',
          style: Style.smallCopyTextStyle,
        ));
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
              '${widget.syntheticList.tools}',
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
                  image: new AssetImage(widget.syntheticList.image1),
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
              '${widget.syntheticList.step1}',
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
                  image: new AssetImage(widget.syntheticList.image2),
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
              '${widget.syntheticList.step2}',
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
                  image: new AssetImage(widget.syntheticList.image3),
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
              '${widget.syntheticList.step3}',
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
                  image: new AssetImage(widget.syntheticList.image4),
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
              '${widget.syntheticList.step4}',
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
                  image: new AssetImage(widget.syntheticList.image5),
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
              '${widget.syntheticList.step5}',
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
                  image: new AssetImage(widget.syntheticList.image6),
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
              '${widget.syntheticList.step6}',
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
                  image: new AssetImage(widget.syntheticList.image7),
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
              '${widget.syntheticList.step7}',
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
                  image: new AssetImage(widget.syntheticList.image8),
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
              '${widget.syntheticList.step8}',
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
                  image: new AssetImage(widget.syntheticList.image9),
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
              '${widget.syntheticList.step9}',
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
                  image: new AssetImage(widget.syntheticList.image10),
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
              '${widget.syntheticList.step10}',
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
            widget.syntheticList.description,
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
        title: Text('${widget.syntheticList.name}'),
      ),
      body: projectInstructions,
    );
  }
}
