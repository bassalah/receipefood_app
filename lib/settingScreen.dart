import 'package:flutter/material.dart';
import 'package:receipefood_app/widgets/switch.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.notifications)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Settings",style: TextStyle(fontSize: 30),),
            Container(
              width: double.infinity,
              decoration:BoxDecoration(
                color: Colors.grey,
                    borderRadius:BorderRadius.circular(20)
              ),


              child: Row(
                children: [
                  Icon(Icons.face_unlock_rounded),
                  Text("language",style: TextStyle(fontSize: 20),),
                  SizedBox(width: 150,),
                  Text("English",style: TextStyle(fontSize: 20),),


                ],
              ),

            ),

            Spacer(),


            Container(
              width: double.infinity,
              decoration:BoxDecoration(
                  color: Colors.grey,
                  borderRadius:BorderRadius.circular(20)
              ),


              child: Column(
                children: [

                  Container(
                    width: double.infinity,
                    color: Colors.grey,
                    child: Row(

                      children: [
                        Icon(Icons.person),
                        Text("update profile",style: TextStyle(fontSize: 20),),
                        SizedBox(width: 150,),
                        SwitchExample(),


                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: double.infinity,
                    color: Colors.grey,
                    child: Row(
                      children: [
                        Icon(Icons.notifications),
                        Text("push notification",style: TextStyle(fontSize: 20),),
                        SizedBox(width: 150,),
                        SwitchExample(),


                      ],
                    ),
                  ),

              Spacer(),
              Container(
                width: double.infinity,
                color: Colors.grey,
                child: Row(
                  children: [
                    Icon(Icons.email),
                    Text("email notification",style: TextStyle(fontSize: 20),),
                    SizedBox(width: 150,),
                    SwitchExample(),

                  ],
                ),
              ),
                ],
              ),

            ),

          ],
        ),
      ),
    );
  }
}
