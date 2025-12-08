import 'package:flutter/material.dart';
import 'workout_page.dart';


class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children:[


          const Divider(        
            color: Color.fromARGB(255, 24, 24, 24)
          ),

          //Made the container inside of it interactable and leads to WorkoutPage

          
          FloatingActionButton(onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context){
              return SetsWeightsReps();
              },
            ),
          );
          },
          ),
          

          const Divider(        
            color: Color.fromARGB(255, 24, 24, 24)
        
          )
  
        ],
        ),
      )
    );
  }
}