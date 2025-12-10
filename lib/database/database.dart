import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Excercise {
  String name;
  String sets;
  String reps;
  String weight;

  Excercise();

}

class Workout{
  String name;

  List<Excercise> excercises;

}

void getInfo() {

}

double adjustWeightUnits(double weight, String units){
  if (units == 'kg') {
    return weight * 2.2;
  } 
  return weight / 2.2;
}