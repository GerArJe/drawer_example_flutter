import 'package:drawer_example/message.dart';
import 'package:drawer_example/profile.dart';
import 'package:drawer_example/settingd.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeView(),
      initialRoute: HomeView.nombrePagina,
      routes: {
        HomeView.nombrePagina: (BuildContext context) => HomeView(),
        Message.nombrePagina: (BuildContext context) => Message(),
        Profile.nombrePagina: (BuildContext context) => Profile(),
        Settings.nombrePagina: (BuildContext context) => Settings(),
      },
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  static final nombrePagina = "HomeView";

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> { 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Message'),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, Message.nombrePagina);
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, Profile.nombrePagina);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, Settings.nombrePagina);
                },
              ),
            ],
          ),
        ),
        body: Center(child: Text('DRAWER EXAMPLE')),
      );
  }
}