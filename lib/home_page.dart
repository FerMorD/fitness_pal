import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// Home-Page changes how the widgets would be organized
// Doesn't allow scrolling at all if widgets exceed certain screen length

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            SearchingBar(),
            WorkoutTab(),
            WorkoutCalendar()
          ]
      )
    );
  }
}

// TO DO: Actually implement a search engine and data base for this
//
// Just a simple place holder to fit the wireframe created

class SearchingBar extends StatelessWidget {
  const SearchingBar({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: SearchBar(

        // Added this to restore functionality with other widgets,
        //otherwise SearchBar is shown and nothing else

      )
    );
  }
}



class WorkoutTab extends StatelessWidget {
  const WorkoutTab({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [

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
      ]
    );
  }
}



class WorkoutCalendar extends StatefulWidget {
  const WorkoutCalendar({super.key});

  @override
  State<WorkoutCalendar> createState() => _WorkoutCalendarState();
}

// Calendar which ranges from 2020 utc - 2040 utc and has a red circle around current date,
// along with green circles with dates which the user entered excercises

class _WorkoutCalendarState extends State<WorkoutCalendar> {

  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text('123'),
        TableCalendar(
        focusedDay: today,
        firstDay: DateTime.utc(2020),
        lastDay: DateTime.utc(2040),

        ),
      ],
    );
  }
}
