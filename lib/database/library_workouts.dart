import 'workout_database.dart';

class Workouts{
  String? name;
  List<Excercises>? excercises;
  
  Workout({required this.name, required this.excercises})
}

class WorkoutData{

  String? name;
  List<Excercises>? excercises;

  List<Workouts> workoutList = [

    Workouts(
      name: 'Arms',

      excercises: [
        Excercise(
          name: 'Tricep Pushdown',
          weight: '10',
          reps: '10',
          sets: '4',
        ),
    ],
  ]
},

List<Workout> getWorkouts(){
  return workoutList;
}

void addWorkout(String name){
  workoutList.add(Workout(name: name, excercise:[]));
}
