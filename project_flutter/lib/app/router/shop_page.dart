import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key,this.value}) : super(key: key);
  final String? value;
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.goNamed(
            "detail-product-page",
            params: {"id_product": "101"},
          ),
          child: const Text("Detail product"),
        ),
      ),
    );
  }
}
