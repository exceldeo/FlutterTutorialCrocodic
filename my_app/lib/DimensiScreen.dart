import 'package:flutter/material.dart';

class DimensiScreen extends StatefulWidget {
  DimensiScreen({Key key}) : super(key: key);

  @override
  _DimensiScreenState createState() => _DimensiScreenState();
}

class _DimensiScreenState extends State<DimensiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            color: Colors.amber,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            color: Colors.blue,
          ),
          // Flexible(
          //   flex: 4,
          //   child: Container(
          //     color: Colors.amber,
          //   ),
          // ),
          // Flexible(
          //   flex: 6,
          //   child: Container(
          //     color: Colors.blue,
          //   ),
          // ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.6,
          //   decoration: BoxDecoration(
          //       border: Border.all(color: Colors.amber), color: Colors.blue),
          //   child: Column(
          //     children: [
          //       Flexible(
          //         flex: 2,
          //         child: Container(
          //           decoration: BoxDecoration(
          //               border: Border.all(color: Colors.blueAccent)),
          //         ),
          //       ),
          //       Flexible(
          //         flex: 4,
          //         child: Container(
          //           decoration:
          //               BoxDecoration(border: Border.all(color: Colors.red)),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
