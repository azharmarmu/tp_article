import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController datecontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    datecontroller.text = "";
  }

  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tutorials Point")),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
              child: TextField(
            controller: datecontroller,
            decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today), labelText: "Enter Date"),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2100),
              );
              if (pickedDate != null) {
                String formattedDate =
                    DateFormat("dd-MM-yyyy").format(pickedDate);

                setState(() {
                  datecontroller.text = formattedDate.toString();
                });
              } else {
                print("Not selected");
              }
            },
          ))),
    );
  }
}
