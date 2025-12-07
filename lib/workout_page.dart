import 'package:flutter/material.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workouts'),
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
         icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(

        children:[

          Icon(Icons.line_weight),
          Container(
            height: 210,
            decoration: BoxDecoration(
            color: Color.fromARGB(255, 34, 34, 34),
            borderRadius: BorderRadius.circular(20)
            ),
          ),

          const Divider(        
            color: Color.fromARGB(255, 24, 24, 24)
          ),

          Container(
            color: Colors.white,
            child: const Text ('This is'),
          )
        ],

      )
    );
  }
}