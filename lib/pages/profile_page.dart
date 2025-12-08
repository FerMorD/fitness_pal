import 'package:fitness_pal/pages/home_page.dart';
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
            alignment: Alignment(0, -0.6),
            child: Text('Fitness Pal',
              style: TextStyle(color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold
              )
            )
          ),

          //Sign In

          Align(
            alignment: Alignment(0, -0.3),
            child: Text('Sign in',
              style: TextStyle(color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
              )
            )
          ),


          //Username search box

          Align(
            alignment: Alignment(0,0),
            
            child: SizedBox(
              width: 250,
              height: 30,
              child: SearchBar(),
            )
          ),

          //Password enter box
              
          Align(
            alignment: Alignment(0,0.25),
            
            child: SizedBox(
              width: 250,
              height: 30,
              child: SearchBar(),
            )
          ),

          //Log in button

          Align(
            alignment: Alignment(0, 0.58),
            child: SizedBox(
              width: 120,
              height: 35,
            child: FloatingActionButton(onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                builder: (context){
                  return HomePage();
                },
              ),
            );
            },
          ),
          ),
          )

        ],
      )
    );
  }
}