import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';


import 'MYNOTE.dart';

class SUCCESS extends StatefulWidget {
  const SUCCESS({Key? key}) : super(key: key);

  @override
  State<SUCCESS> createState() => _SUCCESSState();
}
bool isWhite=false;
bool isColored=false;
class _SUCCESSState extends State<SUCCESS> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: isWhite?Colors.white:Colors.blue[900],
      appBar: AppBar(

          title: const Text("New Note",style: TextStyle(
              fontSize: 22
          ),),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NOTE()));

            }, icon: const Icon(Icons.check))
          ],

          backgroundColor:isColored?Colors.blue[900]:Colors.white,
      ),
      body:Column(
        children: [
          Expanded(
              child: Container(
                height: 100,
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
          )),
          Expanded(child: Container(
            height: 100,

            width: double.infinity,
            color:isColored?Colors.blue[900]:Colors.white ,
            child: Container(
              margin: const EdgeInsets.only(left: 50),
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: (){
                Share.share("hello world");
                        },style: ButtonStyle(

                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          const CircleBorder()
                      ),
                        ),
                          child: const Icon(Icons.share,size: 30,color: Colors.white38,),),
                      const Text("Share with your friends",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),)
                    ],
                  ),

                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: (){
                          isColored=!isColored;
                        },
                        style: ButtonStyle(

                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            const CircleBorder()
                        ),
                      ),
                        child: const Icon(Icons.delete,size: 30,color: Colors.white38,),),
                      const Text("Delete",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),)
                    ],
                  ),

                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: (){


                        },style: ButtonStyle(

                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            const CircleBorder()
                        ),
                      ),
                        child: const Icon(Icons.copy,size: 30,color: Colors.white38,),),
                      const Text("Duplicate",style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),)
                    ],
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                    const CircleAvatar(),
                      const SizedBox(
                        width: 4,
                      ),
                      const CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.pink,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.limeAccent,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.cyan[200],
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.purpleAccent,
                      ),
                      const SizedBox(
                        width: 4,
                      ),

                      ElevatedButton(onPressed: (){

                        setState(() {
                          isColored=!isColored;
                        });
                      },style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)
                            )
                        ),
                          child: const Icon(Icons.check),),

                    ],
                  )

                ],
              ),
            ),

          )),
        ],
      )


    );
  }
}
