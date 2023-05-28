import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime _dueDate = DateTime.now();
  final currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Date",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                    context: context,
                    initialDate: currentTime,
                    firstDate: DateTime(1990),
                    lastDate: DateTime(currentTime.year + 5));
                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
              },
              child: const Text("Select"),
            )
          ],
        ),
        const SizedBox(height: 10),
        Text(
          DateFormat('dd-MM-yyyy').format(_dueDate),
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
