import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_flutter/app/bloc/bloc_service/page_bloc.dart';
class BlocPage extends StatefulWidget {
  const BlocPage({Key? key}) : super(key: key);

  @override
  State<BlocPage> createState() => _BlocPageState();
}
// https://apiappmo.usexpressglobal.com/api/Login/CheckPhoneActive'
class _BlocPageState extends State<BlocPage> {
  String phone= '';
  @override
  void initState() {
    PageBloc().add(const CallApi());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => PageBloc(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Bloc Page"),
          ),
          body:  BlocBuilder<PageBloc,PageState>(
            builder: (context, state) {
              if(state is PageSucceeded){
                return Text("$state");
              }
              if(state is PageInitial){
                return const Center(child:  Text("PageInitial"));
              }
              if(state is PageLoading){
                return const Center(child:  Text("PageLoading"));
              }
              return const Center(child:  Text("sdad"));
            },
          )
      ),
    );
  }
}
