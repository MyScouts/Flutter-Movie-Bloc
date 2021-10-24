import 'package:flutter/material.dart';
import 'package:flutter_app/src/configs/configs.dart';

class WidgetButtonCustom extends StatelessWidget {
  final Widget? prefix;
  final String text;
  final VoidCallback onpress;
  final Color? backgroundColor;
  final Color? textColor;
  const WidgetButtonCustom(
      {Key? key,
      required this.text,
      required this.onpress,
      this.textColor,
      this.prefix,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 1,
          primary: backgroundColor ?? Color(0xFFF1F2F4),
        ),
        onPressed: onpress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefix ?? Text(""),
            SizedBox(width: prefix != null ? 10 : 0),
            Text(
              text,
              style:
                  STYLE_SMALL_BOLD.copyWith(color: textColor ?? Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
