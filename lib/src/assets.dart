import 'package:flutter/material.dart';

import 'dart:async';

import 'package:flutter/rendering.dart';
import 'package:image_color_picker/src/color.dart';

class AssetImageBG extends StatefulWidget {
  final String assetPath;

  const AssetImageBG({Key? key, required this.assetPath}) : super(key: key);
  @override
  _AssetImageBGState createState() => _AssetImageBGState();
}

class _AssetImageBGState extends State<AssetImageBG> {
  GlobalKey imageKey = GlobalKey();
  GlobalKey paintKey = GlobalKey();

  late GlobalKey currentKey;

  final StreamController<Color> stateController = StreamController<Color>();
  Color color1 = Color(0xFFFFFFFF);
  Color color2 = Color(0xFFFFFFFF);
  @override
  void initState() {
    currentKey = paintKey;
    Timer.periodic(Duration(seconds: 1), (callback) async {
      if (  imageKey.currentState!.context.size!.height == 0.0) {
      } else {
        var cd1 = await ColorDetection(
          currentKey: currentKey,
          paintKey: paintKey,
          stateController: stateController,
        ).searchPixel(Offset(18.2, 348.0));
        var cd12 = await ColorDetection(
          currentKey: currentKey,
          paintKey: paintKey,
          stateController: stateController,
        ).searchPixel(Offset(230.9, 549.8));
        color1 = cd1;
        color2 = cd12;

        setState(() {});

        callback.cancel();
        stateController.close();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Image"),
        centerTitle: true,
        backgroundColor: color1,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.8), // 10% of the width, so there are ten blinds.
                colors: [color1, color2], // whitish to gray
                tileMode:
                    TileMode.mirror, // repeats the gradient over the canvas
              ),
            ),
          ),
          RepaintBoundary(
            key: paintKey,
            child: Center(
              child: Image.asset(
                widget.assetPath,

                key: imageKey,
                fit: BoxFit.fitWidth,
                //scale: .8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
