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
    super.initState();
    // PageBloc().add( CallApi());
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Bloc Page"),
        ),
        body:  BlocBuilder<PageBloc,PageState>(
          builder: (context, state) {
            if(state is PageSucceeded){
              return Center(child: Text("${state.data}"));
            }
            if(state is PageError){
              return const Center(child:  Text("PageError"));
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
    );
  }
}
