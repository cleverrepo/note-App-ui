import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import 'homepage.dart';


class NEWNOTE extends StatefulWidget {
  const NEWNOTE({Key? key}) : super(key: key);

  @override
  State<NEWNOTE> createState() => _NEWNOTEState();
}
bool isWhite=false;

class _NEWNOTEState extends State<NEWNOTE> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
        resizeToAvoidBottomInset: false,
        //backgroundColor: isWhite?Colors.white:Colors.blue[900],
        appBar: AppBar(

          title: const Text("Edit Note",style: TextStyle(
              fontSize: 22
          ),),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
            IconButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>HOMEPAGE()));


            }, icon: const Icon(Icons.check))
          ],

          backgroundColor:isWhite?Colors.white:Colors.cyanAccent,
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Expanded(child: Container(
             padding: const EdgeInsets.all(20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
            
               children: [
                 Text("Meeting",
                 style: TextStyle(
                   fontSize: 22,
                   color: Colors.blue[600]
                 ),
                 ),
                 const Text("Meeting Meeting Meeting Meeting Meeting Meeting",style: TextStyle(
                   fontSize: 15
                 ),),
                 const Text("Meeting Meeting Meeting Meeting Meeting Meeting",style: TextStyle(
                     fontSize: 15
                 ),),
                 const Text("Meeting Meeting Meeting Meeting Meeting Meeting",style: TextStyle(
                     fontSize: 15
                 ),),
                 const Text("Meeting Meeting Meeting Meeting Meeting Meeting",style: TextStyle(
                     fontSize: 15
                 ),),

               ],
             ),
           )),
            Expanded(child: Container(
              height: 100,

              width: double.infinity,
              color: isWhite?Colors.white:Colors.cyanAccent,
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
                          onPressed: (){},
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
                          onPressed: (){},style: ButtonStyle(

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
                        const CircleAvatar(
                          radius: 19,
                          backgroundColor: Colors.yellow,
                        ),
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

                        ElevatedButton(onPressed: (){
                          setState(() {
                            isWhite=!isWhite;
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
