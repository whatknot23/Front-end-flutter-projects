import 'package:flutter/material.dart';

import '../helper/helper.dart';
import '../model/post.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _HomeState();
}

class _HomeState extends State<Dashboard> {
  List<Post>? posts;

  bool isLoaded = false;

  getData() async {
    posts = await Helper().getPost();
    setState(() {
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
        body: Visibility(
      visible: isLoaded,
      replacement: Center(heightFactor: 90, child: CircularProgressIndicator()),
      child: ListView.builder(
        itemCount: posts?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                leading: CircleAvatar(
                    radius: 10,
                    child: Text(
                      (posts![index].id).toString(),
                    )),
                title: Text(posts![index].title),
                subtitle: Text(posts![index].body)),
          );
        },
      ),
    ));
  }
}
