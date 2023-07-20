import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Row(
            children: const [
              Icon(Icons.menu),
              Text('Home'),
              Icon(Icons.notifications),
            ],
          ),
          Row(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Enter Your Email",
                    fillColor: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }
}
