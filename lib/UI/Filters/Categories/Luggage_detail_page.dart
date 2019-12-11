import 'package:flutter/material.dart';
import 'package:re_sew/Models/Categories/luggage_model.dart';
import 'package:re_sew/Utils/Colour.dart';
import 'package:re_sew/Utils/text_style.dart';

class LuggageDetailPage extends StatefulWidget {
  final Luggage luggageList;

  LuggageDetailPage(this.luggageList);

  @override
  _LuggageDetailPageState createState() => _LuggageDetailPageState();
}

class _LuggageDetailPageState extends State<LuggageDetailPage> {
  Widget get projectImage {
    return Container(
      height: 250.0,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(widget.luggageList.image),
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
          'Uploaded by: ${widget.luggageList.author}',
          style: Style.smallCopyTextStyle,
        ));
  }

  Widget get category {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: Wrap(alignment: WrapAlignment.spaceEvenly, children: <Widget>[
        Text(
          '${widget.luggageList.category}',
          style: Style.boldCopyTextStyle,
        ),
        Text(
          '${widget.luggageList.time}',
          style: Style.boldCopyTextStyle,
        ),
        Text(
          '${widget.luggageList.material}',
          style: Style.boldCopyTextStyle,
        ),
        Text(
          '${widget.luggageList.difficulty}',
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
              '${widget.luggageList.tools}',
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
                  image: new AssetImage(widget.luggageList.image1),
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
              '${widget.luggageList.step1}',
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
                  image: new AssetImage(widget.luggageList.image2),
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
              '${widget.luggageList.step2}',
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
                  image: new AssetImage(widget.luggageList.image3),
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
              '${widget.luggageList.step3}',
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
                  image: new AssetImage(widget.luggageList.image4),
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
              '${widget.luggageList.step4}',
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
                  image: new AssetImage(widget.luggageList.image5),
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
              '${widget.luggageList.step5}',
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
                  image: new AssetImage(widget.luggageList.image6),
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
              '${widget.luggageList.step6}',
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
                  image: new AssetImage(widget.luggageList.image7),
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
              '${widget.luggageList.step7}',
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
                  image: new AssetImage(widget.luggageList.image8),
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
              '${widget.luggageList.step8}',
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
                  image: new AssetImage(widget.luggageList.image9),
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
              '${widget.luggageList.step9}',
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
                  image: new AssetImage(widget.luggageList.image10),
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
              '${widget.luggageList.step10}',
              style: Style.mainCopyTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  // The widget that displays the image, rating and dog info.
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
            widget.luggageList.description,
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
        title: Text('${widget.luggageList.name}'),
      ),
      body: projectInstructions,
    );
  }
}
