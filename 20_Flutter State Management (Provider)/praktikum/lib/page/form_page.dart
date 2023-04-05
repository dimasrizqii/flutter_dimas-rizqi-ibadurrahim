import 'package:flutter/material.dart';
import 'package:praktikum/widget/form_contact_widget.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: const Text("Material App"),
      ),
      body: const FormContactWidget(),
    );
  }
}