/*
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Excercise {
  String? name;
  String? sets;
  String? reps;
  String? weight;

  Excercise(
    this.name,
    this.sets,
    this.reps,
    this.weight
  );

}

Map<String, dynamic> toMap(String workoutName, String unit){
  return{
    'workout': workoutName,
    'excercise': name,
    'sets': sets,
    'reps': reps,
    'weight': weight,
    'unt': unit,
  };
}

class Workout{
  String? name;

  List<Excercise>? excercises;

  Workout({
    this.name,
    this.excercises,
  });

}


void getInfo() {

}

double adjustWeightUnits(double weight, String units){
  if (units == 'kg') {
    return weight * 2.2;

  } else{
    return weight / 2.2;
  }
}
*/