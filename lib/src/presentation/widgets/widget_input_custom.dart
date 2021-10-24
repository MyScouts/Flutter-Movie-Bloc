import 'package:flutter/material.dart';
import 'package:flutter_app/src/configs/configs.dart';
import 'package:flutter_app/src/utils/app_valid.dart';

class WidgetCustomInput extends StatefulWidget {
  final String? labelText;
  final Widget? prefixRight;
  final bool? isPassword;
  final String? placeholder;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final GlobalKey<FormState> inputKey;

  const WidgetCustomInput(
      {Key? key,
      required this.controller,
      required this.inputKey,
      this.validator,
      this.isPassword,
      this.labelText,
      this.placeholder,
      this.prefixRight})
      : super(key: key);

  @override
  _WidgetCustomInputState createState() => _WidgetCustomInputState();
}

class _WidgetCustomInputState extends State<WidgetCustomInput> {
  bool _isValid = false;
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
              onChanged: (value) {
                print("Test" + widget.validator.toString());
                if (widget.validator == null) {
                  setState(() {
                    _isValid = true;
                  });
                }
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: widget.validator,
              style: STYLE_SMALL_BOLD.copyWith(fontSize: 15),
              decoration: InputDecoration(
                suffixIcon:
                    InkWell(child: _isValid ? widget.prefixRight : Text("")),
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
