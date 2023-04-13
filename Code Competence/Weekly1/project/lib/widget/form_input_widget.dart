import 'package:flutter/material.dart';

class FormInputWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const FormInputWidget({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    this.validator,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        controller: controller,
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
