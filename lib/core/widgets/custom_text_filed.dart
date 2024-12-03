import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class CustomTextFromFiled extends StatelessWidget {
  const CustomTextFromFiled({
    super.key,
    required this.hintText,
    required this.keyboardType,
     this.suffixIcon, this.onSaved,  this.obscureText =false,
  });
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved ;
  final bool obscureText ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ,
      onSaved:onSaved ,
      validator: (value) {
        if(value == null || value.isEmpty){
          return 'هذ الحقل مطلوب';
        }
        return null;
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextStyles.bold13.copyWith(color: const Color(0xff949d9e)),
          filled: true,
          fillColor: const Color(0xfff9fafa),
          border: buildBorder(),
          focusedBorder: buildBorder(),
          enabledBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Color(0xffe6e9e9), width: 1),
    );
  }
}
