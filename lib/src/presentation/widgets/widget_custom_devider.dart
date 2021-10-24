import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetCustomDevider extends StatelessWidget {
  const WidgetCustomDevider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                child: Divider(
                  color: Colors.black,
                  height: 5,
                )),
          ),
          Text("OR"),
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                child: Divider(
                  color: Colors.black,
                  height: 5,
                )),
          ),
        ],
      ),
    );
  }
}
