import 'package:flutter/material.dart';
import 'package:praktikum/model/contact_model.dart';

class ContactProvider with ChangeNotifier {
  final List<ContactModel> _contacts = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  List<ContactModel> get contacts => _contacts;

  TextEditingController get nameController => _nameController;
  TextEditingController get phoneController => _phoneController;

  void addContact(ContactModel contactModel) {
    _contacts.add(contactModel);
    notifyListeners();
  }

  void removeContact() {
    _contacts.removeLast();
    notifyListeners();
  }
}