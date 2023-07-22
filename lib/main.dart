import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String btnTitle = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This app title'),
        ),
        body: currentIndex == 0
            ? SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset('assets/images/bikers.jpg'),
              )
            : Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.amber.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[300],
                      ),
                      onPressed: () {
                        setState(() {
                          btnTitle += '+1';
                        });
                      },
                      child: Text(btnTitle),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              btnTitle += '+1';
                            });
                          },
                          child: Text(btnTitle),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              btnTitle += '+1';
                            });
                          },
                          child: Text(btnTitle),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
      title: 'Material App Title',
    );
  }
}
