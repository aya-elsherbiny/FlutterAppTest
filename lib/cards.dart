import 'package:flutter/material.dart';
import 'package:lab2/models/post.dart';
import 'package:lab2/services/postsService.dart';
import 'package:lab2/singleCard.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  List<Post> postList = new List();
  List<String> images = [
      "https://images.unsplash.com/photo-1484893341013-5f1d9c91a96e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzF8fGljZWxhbmR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
      "https://images.unsplash.com/photo-1506261423908-ea2559c1f24c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1062&q=80",
      "https://images.unsplash.com/photo-1476610182048-b716b8518aae?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1127&q=80",
      "https://images.unsplash.com/photo-1529963183134-61a90db47eaf?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80"
  ];
  @override
  void initState() {
    super.initState();
    getPostFromsServer();
  }

  @override
  void dispose() { 
    super.dispose();
  }

  getPostFromsServer() async {
    postList = await PostService().getPosts();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Posts'),),
    body: ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: postList.length,
      itemBuilder: (BuildContext context, int index){
        return SingleCard(
          //imageLink: images[index],
          text: postList[index].title,
          textBody: postList[index].body
        );
      },
    ),
    );
    
  }
}