import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column (
          children: [
            SetsWeightsReps(),
            AddSetButton()
          ],
        ),
      )
    );
  }
}


class AddSetButton extends StatefulWidget {
  const AddSetButton({super.key});

  @override
  State<AddSetButton> createState() => _AddSetButtonState();
}

class _AddSetButtonState extends State<AddSetButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 70,
              height: 70,
              child: FloatingActionButton(onPressed: () {},
                child: Icon(Icons.plus_one)
              ),
            ),
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
            padding: EdgeInsets.only(top: 15)),

          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [

          Text('Sets',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )
          ),


          Text('Weights',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )
          ),

          Text('Reps',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )
          )
          ],
        ),

        //Row of Sets, weight, box
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //Sets Box
            Container(
              width: 50,
              height: 40,
              color: Colors.grey,
              child: TextField(
                style: TextStyle(color: Colors.white)
              ),
            ),

            //Weights Box
            Container(
              width: 50,
              height: 40,
              color: Colors.grey,
              child: TextField(
                style: TextStyle(color: Colors.white)
              ),
            ),

            //Reps Box
            Container(
              width: 50,
              height: 40,
              color: Colors.grey,
              child: TextField(
                style: TextStyle(color: Colors.white)
              ),
            ),

            //Add new set button

          ],
        ),
      ],
      );

  }
}