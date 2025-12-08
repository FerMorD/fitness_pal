import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SetsWeightsReps()
      ]
    );
  }
}

class SetsWeightsReps extends StatefulWidget {
  const SetsWeightsReps({super.key});

  @override
  State<SetsWeightsReps> createState() => _SetsWeightsRepsState();
}

class _SetsWeightsRepsState extends State<SetsWeightsReps> {
  @override
  Widget build(BuildContext context) {
    return Column(

      
      children: [
        Padding(
          padding: EdgeInsetsGeometry.only(top: 15)),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [

          Text('Sets',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          )
          ),


          Text('Weights',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          )
          ),

          Text('Reps',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          )
          )
          ],
        ),
      ],
    );
  }
}

