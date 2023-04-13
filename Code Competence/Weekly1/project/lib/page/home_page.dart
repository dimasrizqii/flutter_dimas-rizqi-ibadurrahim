import 'package:flutter/material.dart';
import 'package:project/model/form_model.dart';
import 'package:project/widget/form_input_widget.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({
    super.key,
    required this.title,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FormModel> form = List.empty(growable: true);
  final formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _requestController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Welcome to the Club',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(height: 40),
                      Image(
                        image: AssetImage(
                          'assets/welcome.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_downward),
                label: const Text('Scroll Down'),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    const Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: const Text(
                        'Need to get in touch with us? Either fill out the form with your inquiry or find the department email youd like to contact below.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FormInputWidget(
                          width: 195,
                          hintText: "Input first name...",
                          labelText: "First Name",
                          controller: _firstNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Nama Awal wajib diisi';
                            }
                            return null;
                          },
                        ),
                        FormInputWidget(
                          width: 195,
                          hintText: "Input last name....",
                          labelText: "Last Name",
                          controller: _lastNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Nama Akhir wajib diisi';
                            }
                            return null;
                          },
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    FormInputWidget(
                      hintText: "Input your email...",
                      labelText: "Email",
                      controller: _emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email wajib diisi';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    FormInputWidget(
                      hintText: "What can we help you with?",
                      labelText: "Problem",
                      controller: _requestController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Masukkan keluhan anda';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              String firstName =
                                  _firstNameController.text.trim();
                              String lastName = _lastNameController.text.trim();
                              String email = _emailController.text.trim();
                              String request = _requestController.text.trim();

                              if (firstName.isNotEmpty &&
                                  lastName.isNotEmpty &&
                                  email.isNotEmpty &&
                                  request.isNotEmpty) {
                                setState(
                                  () {
                                    _firstNameController.text = '';
                                    _lastNameController.text = '';
                                    _emailController.text = '';
                                    _requestController.text = '';
                                    form.add(
                                      FormModel(
                                        firstName: firstName,
                                        lastName: lastName,
                                        email: email,
                                        request: request,
                                      ),
                                    );
                                  },
                                );
                              }
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          form[0].firstName.replaceFirst(
                                                form[0].firstName[0],
                                                form[0]
                                                    .firstName[0]
                                                    .toUpperCase(),
                                              ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          form[0].lastName.replaceFirst(
                                                form[0].lastName[0],
                                                form[0]
                                                    .lastName[0]
                                                    .toUpperCase(),
                                              ),
                                        )
                                      ],
                                    ),
                                    titlePadding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    content: Text(
                                      form[0].request.replaceFirst(
                                            form[0].request[0],
                                            form[0].request[0].toUpperCase(),
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        child: const Text('Delete'),
                                        onPressed: () {
                                          form.removeAt(0);
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                    actionsAlignment: MainAxisAlignment.center,
                                    actionsPadding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                  );
                                },
                              );
                            }
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
