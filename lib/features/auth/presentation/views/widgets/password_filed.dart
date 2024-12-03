import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_text_filed.dart';

class PasswordFiled extends StatefulWidget {
  const PasswordFiled({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<PasswordFiled> createState() => _PasswordFiledState();
}

class _PasswordFiledState extends State<PasswordFiled> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFromFiled(
        obscureText: obscureText,
        onSaved: widget.onSaved,
        suffixIcon: GestureDetector(
          onTap: () {
            obscureText = !obscureText;
            setState(() {
              
            });
          },
          child: Icon(
            obscureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
            color: const Color(0xffc9cecf),
          ),
        ),
        hintText: 'كلمة السر',
        keyboardType: TextInputType.visiblePassword);
  }
}
