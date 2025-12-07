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
  String pageHeader = 'Home';

  @override
  Widget build(BuildContext context) {

    Widget body = HomePage();
    switch(currentPage){

      case 0:
        body = HomePage();
        pageHeader = 'Home';
      break;

      case 1:
        body = LibraryPage();
        pageHeader = 'Library';
      break; 

      case 2:
       body = ProfilePage();
       pageHeader = 'Profile';
      break;

      default:
        body = HomePage();
        pageHeader = 'Error';
      break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(pageHeader),
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