import 'package:flutter/material.dart';

import 'Edit Note.dart';
import 'NewNote.dart';

class NOTE extends StatefulWidget {
  const NOTE({Key? key}) : super(key: key);

  @override
  State<NOTE> createState() => _NOTEState();
}

class _NOTEState extends State<NOTE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: const Text("My Note",style: TextStyle(
            fontSize: 22
        ),),
      ),
      body:  Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const EDIT()));
            },
            child: Container(
              width: 800,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 100,
              decoration: BoxDecoration(
                  boxShadow: const [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    blurRadius:10,
                    color:Colors.black12,
                  ),
                  ],
                borderRadius: BorderRadius.circular(19)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Meeting with Client",style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue[700]
                  ),),
                  const Text(" Meeting Meeting Meeting  Meeting Meeting",style: TextStyle(
                    fontSize: 18
                  ),),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: 800,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            height: 100,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurStyle: BlurStyle.outer,
                      blurRadius: 10,
                      color: Colors.black12
                  ),
                ],
                borderRadius: BorderRadius.circular(19)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Meeting with Client",style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue[700]
                ),),
                const Text(" Meeting Meeting Meeting  Meeting Meeting",style: TextStyle(
                    fontSize: 18
                ),),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
         Container(
              width: 800,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 100,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurStyle: BlurStyle.outer,
                        blurRadius: 10,
                        color: Colors.black12
                    ),
                  ],
                  borderRadius: BorderRadius.circular(19),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Meeting with Client",style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue[700]
                  ),),
                  const Text(" Meeting Meeting Meeting  Meeting Meeting",style: TextStyle(
                      fontSize: 18
                  ),),
                ],
              ),
            ),


        ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SUCCESS()));
      },
        backgroundColor: Colors.blue[500],
      child: const Icon(Icons.add,size: 30,),
      )
    );
  }
}
