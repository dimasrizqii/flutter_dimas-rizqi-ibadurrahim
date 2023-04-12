import 'package:flutter/material.dart';
import 'package:praktikum/model/create_contact_model.dart';
import 'package:praktikum/model/update_contact_model.dart';
import 'package:praktikum/service/create_contact_service.dart';
import 'package:praktikum/service/update_contact_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CreateContact? createContact;
  UpdateContact? updateContact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  CreateContact? result =
                      await CreateContactServices.getById(2);

                  if (result != null) {
                    setState(
                      () {
                        createContact = result;
                      },
                    );
                  }
                },
                child: const Text(
                  'Get Second Contact',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  CreateContact? result =
                      await CreateContactServices.createUser(
                          'Dimas Rizqi Ibadurrahim', '081803613134');
                  if (result != null) {
                    setState(
                      () {
                        createContact = result;
                      },
                    );
                  }
                },
                child: const Text(
                  'Create Contact',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  UpdateContact? result =
                      await UpdateContactServices.getById(1);

                  if (result != null) {
                    setState(
                      () {
                        updateContact = result;
                      },
                    );
                  }
                },
                child: const Text(
                  'Get First Contact',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  UpdateContact? result =
                      await UpdateContactServices.updatePosts(
                    1,
                    1,
                    'foo',
                    'bar',
                  );
                  if (result != null) {
                    setState(() {
                      updateContact = result;
                    });
                  }
                },
                child: const Text(
                  'Update Contact',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
