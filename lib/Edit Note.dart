import 'package:flutter/material.dart';

import 'newCyan.dart';
class EDIT extends StatefulWidget {
  const EDIT({Key? key}) : super(key: key);

  @override
  State<EDIT> createState() => _EDITState();
}

class _EDITState extends State<EDIT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text("Edit Note",style: TextStyle(
          fontSize: 25,
        ),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const NEWNOTE ()));
          }, icon: const Icon(Icons.check)),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Meeting with clients",style: TextStyle(
              color: Colors.blue[600],
              fontSize: 25
            ),),
            const SizedBox(
              height: 6,
            ),
            const Text("Meeting Meeting Meeting Meeting Meeting Meeting",style: TextStyle(
              fontSize: 16,
            ),),
            const Text("Meeting Meeting Meeting Meeting Meeting Meeting",style: TextStyle(
              fontSize: 16,
            ),),
            const Text("Meeting Meeting Meeting Meeting Meeting Meeting",style: TextStyle(
              fontSize: 16,
            ),),
            const Text("Meeting Meeting Meeting Meeting Meeting Meeting",style: TextStyle(
              fontSize: 16,
            ),),
            const Text("Meeting Meeting Meeting Meeting Meeting Meeting",style: TextStyle(
              fontSize: 16,
            ),),
            const Text("Meeting Meeting ",style: TextStyle(
              fontSize: 16,
            ),),

          ],
        ),
      ),

    );
  }
}
