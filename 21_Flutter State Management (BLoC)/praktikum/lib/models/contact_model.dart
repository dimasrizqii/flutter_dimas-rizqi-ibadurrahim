class ContactModel {
  final String name;
  final String phone;
  bool isEdit;

  ContactModel({
    required this.name,
    required this.phone,
    this.isEdit = false,
  });
}
