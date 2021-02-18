import 'package:flutter/material.dart';

class ImageClass extends StatefulWidget {
  String imageLink;
  String text;
  // ImageClass({this.imageLink});
  ImageClass({this.text});
  @override
  _ImageClassState createState() => _ImageClassState();
}

class _ImageClassState extends State<ImageClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Body'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          // child: Image.network(widget.imageLink),
          child: Text(widget.text, style: TextStyle(fontSize: 25),textAlign: TextAlign.center),
        ),
      )
    );
  }
}