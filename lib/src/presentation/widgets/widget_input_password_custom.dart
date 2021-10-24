import 'package:flutter/material.dart';
import 'package:flutter_app/src/configs/configs.dart';

class WidgetCustomInputPassword extends StatefulWidget {
  final String? labelText;
  final String? placeholder;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  const WidgetCustomInputPassword({
    Key? key,
    this.validator,
    required this.controller,
    this.labelText,
    this.placeholder,
  }) : super(key: key);

  @override
  _WidgetCustomInputPasswordState createState() =>
      _WidgetCustomInputPasswordState();
}

class _WidgetCustomInputPasswordState extends State<WidgetCustomInputPassword> {
  bool _obscureText = true;
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText ?? "",
            style: STYLE_SMALL_BOLD,
          ),
          SizedBox(height: 5),
          Container(
            child: TextFormField(
              controller: widget.controller,
              obscureText: _obscureText,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: widget.validator,
              style: STYLE_SMALL_BOLD.copyWith(fontSize: 15),
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  child: Icon(!_obscureText
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined),
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                fillColor: MAIN_COLOR_LIGHT,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
