import 'package:flutter/material.dart';

class ContactListCircleAvatar extends StatefulWidget {
  const ContactListCircleAvatar({Key? key}) : super(key: key);

  @override
  State<ContactListCircleAvatar> createState() => _ContactListCircleAvatar();
}

class _ContactListCircleAvatar extends State<ContactListCircleAvatar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point - contact List'),
      ),
      body: ListView(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
            buildListTile(title: 'Sam', images: 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800'),
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            const Divider(height: 5, thickness: 2, indent: 20, endIndent:20 ,color: Colors.black,),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            buildListTile(title: 'Anderson', images: 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=800'),
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            const Divider(height: 5, thickness: 2, indent: 20, endIndent:20 ,color: Colors.black,),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            buildListTile(title: 'Victoria', images: 'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            const Divider(height: 5, thickness: 2, indent: 20, endIndent:20 ,color: Colors.black,),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            buildListTile(title: 'Anna', images: 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=800'),
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            const Divider(height: 5, thickness: 2, indent: 20, endIndent:20 ,color: Colors.black,),
          ],
      ),
         );
  }
  Widget buildListTile({
  required String title,
    required String images,
  })=> ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    leading:
       CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(images),
      ),
    title: Text(
      title,
      style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 32),
    ),
  );
}

