import 'package:flutter/material.dart';

import 'image.dart';

class SingleCard extends StatefulWidget {
  String imageLink;
  String text;
  String textBody;
  // SingleCard({this.imageLink , this.text});
  SingleCard({this.text, this.textBody});
  @override
  _SingleCardState createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:5,
      margin: EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0) ,
        child: Center(
          
          child: Column(
            children: [
              Image.network("https://images.unsplash.com/photo-1484893341013-5f1d9c91a96e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzF8fGljZWxhbmR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"),
              GestureDetector(
                  
                  child: Text(widget.text, style: TextStyle(
                    fontSize: 25, color: Colors.black),
                    textAlign: TextAlign.center), onTap:(){
                  Navigator.push(
                  context,
                  //MaterialPageRoute(builder: (context) => ImageClass(imageLink: widget.imageLink)),
                  MaterialPageRoute(builder: (context) => ImageClass(text: widget.textBody)),
                );
                
                }
               ),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up,
                    color: Colors.black,
                    size: 20.0,
                  ),
                  FlatButton(onPressed: null, child:const Text('Like')),
                  Icon(
                    Icons.comment,
                    color: Colors.black,
                    size: 20.0,
                  ),
                  FlatButton(onPressed: null, child:const Text('Comment'))
                ],),
            ],
            ),)
        )
    );
    
  }
 
}