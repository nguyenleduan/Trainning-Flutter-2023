import 'package:flutter/cupertino.dart';

class LoginPage  extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _State();
}

class _State extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("login"),);
  }
}
