import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: Color(0xFF181818),
      ),
      home: const HomePage(),
    );
  }
}






class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Pal'),
      ),

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