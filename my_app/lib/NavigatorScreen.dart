import 'package:flutter/material.dart';
import 'package:my_app/SecondScreen.dart';

class NavigatorScreen extends StatelessWidget {
  const NavigatorScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman pertama'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => SecondRoute()));
            Navigator.pushNamed(context, '/homeScreen');
            // Navigator.pushReplacement(context,
            //     MaterialPageRoute(builder: (context) => SecondRoute()));
            // Navigator.pushNamedAndRemoveUntil(
            //     context, '/secondScreen', (route) => false);
          },
          child: const Text('Ke Halaman Ke Dua'),
        ),
      ),
    );
  }
}
