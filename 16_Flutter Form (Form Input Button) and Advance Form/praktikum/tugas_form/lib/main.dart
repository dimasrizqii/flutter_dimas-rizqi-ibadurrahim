import 'package:flutter/material.dart';
import 'package:tugas_form/model/contact_model.dart';
import 'package:tugas_form/widget/list_contact_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark),
      home: const MyHomePage(title: 'Material App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  final List<ContactModel> _contactModels = [];

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

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
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
          ),
          child: Form(
            key: _formKey,
            child: Column(
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _contactModels.add(ContactModel(
                            name: _nameController.text,
                            phone: _phoneController.text,
                          ));
                          _nameController.clear();
                          _phoneController.clear();
                          setState(() {});
                        } else {}
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder()),
                      child: const Text("Submit"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "List Contacts",
                  style: TextStyle(fontSize: 24),
                ),
                (ListContactWidget(
                  nameController: _nameController,
                  phoneController: _phoneController,
                  contactModels: _contactModels,
                )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ],
        ));
  }
}
