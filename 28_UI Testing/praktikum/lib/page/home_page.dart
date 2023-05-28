import 'package:flutter/material.dart';
import 'package:praktikum/widget/color_picker_widget.dart';
import 'package:praktikum/widget/date_picker_widget.dart';
import 'package:praktikum/widget/file_picker_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interactive Widget"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            DatePickerWidget(),
            SizedBox(height: 10,),
            Divider(height: 20, color: Colors.black, thickness: 1,),
            SizedBox(height: 10,),
            ColorPickerWidget(),
            SizedBox(height: 10,),
            Divider(height: 20, color: Colors.black, thickness: 1,),
            SizedBox(height: 10,),
            FilePickerWidget()
          ],
        ),
      ),
    );
  }
}