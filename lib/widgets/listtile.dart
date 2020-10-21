import 'package:flutter/material.dart';

class Listcards extends StatelessWidget {
  const Listcards({Key key, @required this.clr}) : super(key: key);
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 90,
            height: 150,
            decoration: BoxDecoration(
              color: clr,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: Text('sham'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('1997'),
          ),
        ],
      ),
    );
  }
}
