import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'NewNote.dart';

class PRO extends StatefulWidget {
  const PRO({Key? key}) : super(key: key);

  @override
  State<PRO> createState() => _PROState();
}
DateTime dateTime=DateTime.now();


class _PROState extends State<PRO> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Note",style: TextStyle(
          fontSize: 22
        ),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SUCCESS()));
          }, icon: const Icon(Icons.check))
        ],

        backgroundColor: Colors.blue[900]
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(DateFormat('yyyy-MM-dd kk:').format(DateTime.now()),style: const TextStyle(
              fontSize: 20
            ),),
            TextFormField(
              decoration: const InputDecoration(
                hintText:"Type something",
                hintStyle: TextStyle(
                  color:Color(0xFF3949AB),
                )

              ),

            ),
            const Text("Type something",style:TextStyle(

            color:Colors.black54,))
          ],
        ),
      )


    );
  }
}
