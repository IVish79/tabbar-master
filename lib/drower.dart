import 'package:flutter/material.dart';

class drower extends StatefulWidget {
  const drower({Key? key}) : super(key: key);

  @override
  State<drower> createState() => _drowerState();
}

class _drowerState extends State<drower> {
 int cnt = 0 ;
 List<Widget> l = [first(),second(),third()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(currentIndex: cnt,onTap: (value) {
        setState(() {
          cnt=value;
        });
      },items: [
        BottomNavigationBarItem(icon: Icon(Icons.add_call),label: "first"),
        BottomNavigationBarItem(icon: Icon(Icons.message_rounded),label: "second"),
        BottomNavigationBarItem(icon: Icon(Icons.video_call),label:"third" ),
      ],),
      drawer: Drawer(
        child: ListView(
          children: [UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80"),),
              currentAccountPictureSize: Size(80,80),
            otherAccountsPictures: [
              CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80"),),
              CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80"),),
              CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80"),),
            ],

            accountName:Text("Drawer Demo"), accountEmail:Text("Vish13@gmail.com")),
            ListTile(
              leading:Icon(Icons.account_circle_outlined),
              title: Text("first"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  cnt=0;
                });
              },
            ),
            ListTile(
              leading:Icon(Icons.accessibility),
              title: Text("Second"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  cnt=1;
                });
              },
            ),
            ListTile(
              leading:Icon(Icons.add_call),
              title: Text("Third"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  cnt=2;
                });
              },
            )
          ],
        ),
      ),
      body: l[cnt],backgroundColor: Colors.cyan,
    );
  }
}
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lime,
    );
  }
}
class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
}
class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}

