import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../base/models/model_page.dart';

class RouterPage extends StatefulWidget {
  const RouterPage({Key? key}) : super(key: key);

  @override
  State<RouterPage> createState() => _RouterPageState();
}

class _RouterPageState extends State<RouterPage> {
  List<ModelPage> list = ModelPage.getList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Router Page"),
      ),
      body: Center(child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,index) {
            return ListTile(
               title: Text(list[index].name) ,
              onTap: () {
                return context.go(list[index].path);
              },
            );
          }),),
    );
  }
}
