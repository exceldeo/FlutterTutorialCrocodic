import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.popAndPushNamed(context, '/navigatorScreen');
            // Navigator.popUntil(
            //     context, ModalRoute.withName('/navigatorScreen'));
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
