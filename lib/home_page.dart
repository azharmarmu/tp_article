import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

List _items = [
  {"name": "India",      "continent": "Asia"},
  {"name": "China",      "continent": "Asia"},
  {"name": "Indonesia",  "continent": "Asia"},
  {"name": "Japan",      "continent": "Asia"},

  {"name": "UK",         "continent": "Europe"},
  {"name": "Finland",    "continent": "Europe"},
  {"name": "Italy",      "continent": "Europe"},
  {"name": "France",     "continent": "Europe"},

  {"name": "Canada",     "continent": "North America"},
  {"name": "USA",        "continent": "North America"},
  {"name": "Greenland",  "continent": "North America"},
  {"name": "Cuba",       "continent": "North America"},

];
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: GroupedListView<dynamic, String>(
        elements: _items,
        groupBy: (item) => item['continent'],
        groupComparator: (str1, str2) => str2.compareTo(str1),
        itemComparator: (item1, item2) => item1['name'].compareTo(item2['name']),
        order: GroupedListOrder.ASC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            elevation: 8.0,
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              child: ListTile(
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                leading:const Icon(
                    Icons.map,
                     ),
                title: Text(element['name']),
              ),
            ),
          );
        },

      ),
    );
  }
}
