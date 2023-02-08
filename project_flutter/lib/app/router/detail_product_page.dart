import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class   DetailProductPage extends StatelessWidget {
    DetailProductPage({Key? key,this.idProduct}) : super(key: key);
  String? idProduct;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text("id = $idProduct"),
      ),
      body: Center(
        child:
            GestureDetector(onTap: () => context.goNamed("shop-page"),
                child: const Text("back")),
      ),
    );
  }
}
