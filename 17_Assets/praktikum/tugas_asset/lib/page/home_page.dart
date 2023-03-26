import 'package:flutter/material.dart';
import 'package:tugas_asset/widget/grid_view_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(6),
        child: const GridViewWidget(),
      ),
    );
  }
}
