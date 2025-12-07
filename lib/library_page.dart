import 'package:flutter/material.dart';


class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

        children:[

          const Divider(        
            color: Color.fromARGB(255, 24, 24, 24)
          ),
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
  
        ],
        ),
      )
    );
  }
}