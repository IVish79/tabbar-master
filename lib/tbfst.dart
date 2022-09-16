import 'package:flutter/material.dart';

class tbfst extends StatefulWidget {
  const tbfst({Key? key}) : super(key: key);

  @override
  State<tbfst> createState() => _tbfstState();
}

class _tbfstState extends State<tbfst> {
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child:Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        title: Text("Tabbar DEmo"),
        bottom: TabBar(tabs: [
          Tab(child: Text("chat"),icon: Icon(Icons.add_call),),
          Tab(child: Text("Status"),),
          Tab(child:Text("Call"),icon: Icon(Icons.video_call),)
        ],),
      ),
    ));
  }
}
