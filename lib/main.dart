import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Voyage Thailande"),
          backgroundColor: Colors.cyan,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: (){

            },
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.bookmark_border
              ),
              onPressed: (){

              },
            )
          ],

        ),
      ),
    );
  }
}


