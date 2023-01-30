import 'package:flutter/material.dart';

class ImageCircleAvatar extends StatefulWidget {
  const ImageCircleAvatar({Key? key}) : super(key: key);

  @override
  State<ImageCircleAvatar> createState() => _ImageCircleAvatarState();
}

class _ImageCircleAvatarState extends State<ImageCircleAvatar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: const Center(
        child:CircleAvatar(
          radius: 150,
          backgroundColor:Colors.amber,
          child:CircleAvatar(
            radius: 140,
              backgroundColor: Colors.amberAccent,
              child:CircleAvatar(
                radius: 130,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGNhdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
              )
          )



        ),
      ),
    );
  }
}

