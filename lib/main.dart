import 'package:flutter/material.dart';
import 'home_page.dart';
import 'library_page.dart';
import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 24, 24, 24),
      ),
      home: const RootPage(),
    );
  }
}






class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {

    Widget body = HomePage();
    switch(currentPage){

      case 0:
        body = HomePage();
      break;

      case 1:
        body = LibraryPage();
      break; 

      case 2:
       // body = ProfilePage();
      break;

      default:
        body = HomePage();
      break;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Pal'),
      ),

      body: body,
      bottomNavigationBar: NavigationBar(
        destinations: const[ 
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.book), label: 'Library'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'), 
      ],

      onDestinationSelected: (int index){
        setState(() {
        currentPage = index;          
        });
      },
      selectedIndex: currentPage,
      )
    );
  }
}