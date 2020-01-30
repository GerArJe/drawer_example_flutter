import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key key}) : super(key: key);

  static final nombrePagina = "Message";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
      ),
      body: Center(child: Text('Message'),),
    );
  }
}