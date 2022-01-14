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
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.6,
          //   decoration:
          //       BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          // ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.4,
          //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          // ),
          Flexible(
            flex: 2,
            child: Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(border: Border.all(color: Colors.amber)),
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.red)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
