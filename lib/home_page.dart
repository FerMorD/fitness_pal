import 'package:fitness_pal/workout_page.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: ElevatedButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context){
                return const WorkoutPage();
              },
            ),
          );
        }, 
        child: const Text('Enter Workout'))
    );
  }
}
