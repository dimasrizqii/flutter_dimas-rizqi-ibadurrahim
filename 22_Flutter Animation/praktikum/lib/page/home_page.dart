import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:praktikum/page/form_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 30),
          children: const [
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Material App"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return const FormPage();
                },
                transitionDuration: const Duration(milliseconds: 500),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: Tween(begin: const Offset(0, 1), end: Offset.zero)
                        .animate(animation),
                    child: child,
                  );
                },
              ),
            );
          },
          child: const Text("Go to Contact Page"),
        ),
      ),
    );
  }
}

navigationPage(
  BuildContext context,
  Widget page,
) {
  Navigator.push(
    context,
    PageTransition(
      child: page,
      type: PageTransitionType.fade,
    ),
  );
}
