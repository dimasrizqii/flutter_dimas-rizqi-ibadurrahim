import 'package:flutter/material.dart';
import 'package:praktikum/model/contact_model.dart';

class ListContactWidget extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final List<ContactModel> contactModels;

  const ListContactWidget({
    super.key,
    required this.contactModels,
    required this.nameController,
    required this.phoneController,
  });

  @override
  State<ListContactWidget> createState() => _ListContactWidgetState();
}

class _ListContactWidgetState extends State<ListContactWidget> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      padding: const EdgeInsets.only(
        top: 8,
      ),
      shrinkWrap: true,
      itemCount: widget.contactModels.length,
      itemBuilder: (context, index) {
        final data = widget.contactModels[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Text(
              data.name.toString()[0].toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Text(
            data.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Text(
            data.phone,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  if (data.isEdit) {
                    data.isEdit = false;
                    widget.contactModels[index] = ContactModel(
                      name: widget.nameController.text,
                      phone: widget.phoneController.text,
                    );
                    widget.nameController.clear();
                    widget.phoneController.clear();
                  } else {
                    data.isEdit = true;
                    widget.nameController.text = data.name;
                    widget.phoneController.text = data.phone;
                  }

                  setState(() {});
                },
                icon: data.isEdit
                    ? const Icon(Icons.check)
                    : const Icon(Icons.edit),
              ),
              const SizedBox(width: 24),
              IconButton(
                onPressed: () {
                  widget.contactModels.removeAt(index);
                  setState(() {});
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        );
      },
    );
  }
}
