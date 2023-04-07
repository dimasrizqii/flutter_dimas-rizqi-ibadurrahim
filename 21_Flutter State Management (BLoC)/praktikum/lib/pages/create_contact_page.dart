import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum/bloc/contact_bloc.dart';
import 'package:praktikum/models/contact_model.dart';

class CreateContactPage extends StatefulWidget {
  const CreateContactPage({super.key});

  static const String route = '/createContact';

  @override
  State<CreateContactPage> createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Contact'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: const Icon(Icons.phone),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: const Text(
                      "Create New Contacts",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: const Text(
                        "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    validator: (value) {
                      final capitalized =
                          RegExp(r"^[A-Z][a-zA-Z]*(\s[A-Z][a-zA-Z]*)*$");
                      final mustLetter = RegExp(r'^[a-zA-Z\s]+$');
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      } else if (value.length <= 2) {
                        return "Your name must have at least 2 letters";
                      } else if (!mustLetter.hasMatch(value)) {
                        return "You can't use numbers or special characters in your name";
                      } else if (!capitalized.hasMatch(value)) {
                        return "The First Letter must be Capitalized";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: "Name",
                      hintText: "Insert Your Name",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    controller: _nameController,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      final numberValidator = RegExp(r'^0?[1-9]\d*$');
                      final startWithZero = RegExp(r'^0');
                      if (value == null || value.isEmpty) {
                        return "Please enter your phone number";
                      } else if (!startWithZero.hasMatch(value)) {
                        return "Phone number must start with 0";
                      } else if (value.length < 6 || value.length > 15) {
                        return "Phone number must be at least 6 digits and less than 15 digits";
                      } else if (!numberValidator.hasMatch(value)) {
                        return "Please use a valid number";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: "Nomor",
                      hintText: "+62 ....",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    controller: _phoneController,
                  ),
                  const SizedBox(height: 30),
                  BlocBuilder<ContactBloc, ContactState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          final isValid = _formKey.currentState!.validate();
                          if (!isValid) {
                            return;
                          }
                          final contact = ContactModel(
                            name: _nameController.text,
                            phone: _phoneController.text,
                          );
                          final duplicate = state.contacts
                              .where(
                                  (element) => element.phone == contact.phone)
                              .isNotEmpty;
                          if (duplicate) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Contact already exists'),
                              ),
                            );
                            return;
                          }
                          context
                              .read<ContactBloc>()
                              .add(CreateContact(contacts: contact));
                          return Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder()),
                        child: const Text("Submit"),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
