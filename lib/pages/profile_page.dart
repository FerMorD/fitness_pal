import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(

        children: [


          //Background Box

          Align(
            alignment: Alignment.center,

            child: Container(
              width: 325,
              height: 500,

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 34, 34, 34),
                borderRadius: BorderRadius.circular(20)
              ),
            )
          ),


          //Fitness Pal Name

          Align(
            alignment: Alignment.center,

            child: Text('Fitness Pal')
          ),


          //Username search box

          Align(
            alignment: Alignment.center,

            child: SearchBar(

            )
          ),

          //Password enter box
              
          Align(
            alignment: Alignment.center,

            child: SearchBar(
              
            )
          )

        ],

      )
    );
  }
}