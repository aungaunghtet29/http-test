import 'package:flutter/material.dart';
import 'package:http_test/api/post-api.dart';
import 'package:http_test/models/post-model.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({Key key, @required this.post}) : super(key: key);
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        actions: [
          IconButton(

            icon: Icon(Icons.delete),
            onPressed: () async {
              await deletePost(post.id);
              
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text(post.title),
                  ),
                  ListTile(
                    title: Text("ID"),
                    subtitle: Text("${post.id}"),
                  ),
                  ListTile(
                    title: Text("Body"),
                    subtitle: Text(post.body),
                  ),
                  ListTile(
                    title: Text("User ID"),
                    subtitle: Text("${post.userId}"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
