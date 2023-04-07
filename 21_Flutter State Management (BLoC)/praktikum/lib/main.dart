import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum/pages/create_contact_page.dart';
import 'package:praktikum/pages/home_page.dart';

import 'bloc/contact_bloc.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ContactBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        routes: {
          '/': (context) => const HomePage(),
          '/createContact': (context) => const CreateContactPage(),
        },
      ),
    );
  }
}
