import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Indian Flag',
      home: IndianFlag(),
    );
  }
}

class IndianFlag extends StatefulWidget {
  const IndianFlag({Key? key});

  @override
  State<IndianFlag> createState() => _IndianFlagState();
}

class _IndianFlagState extends State<IndianFlag> {
  int _counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Indian Flag',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Text('Add'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.white,
              Colors.green,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_counter >= 0)
                Container(
                  height: 500,
                  width: 20,
                  color: Colors.black,
                ),
              Column(
                children: [
                  if (_counter >= 1)
                    Container(
                      height: 80,
                      width: 250,
                      color: Colors.orange,
                    ),
                  if (_counter >= 2)
                    Container(
                      height: 80,
                      width: 250,
                      color: Colors.white,
                      child: (_counter >= 3)
                          ? Image.asset(
                              'assets/images/ashokachakra.jpg',
                            )
                          : Container(),
                    ),
                  if (_counter >= 4)
                    Container(
                      height: 80,
                      width: 250,
                      color: Colors.green,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
