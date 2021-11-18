
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Home')
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.redAccent,
            primary: Colors.white
          ),
          child: const Text('Comenzar'),
          onPressed: (){
            Navigator.pushNamed(context, '/counter');
          },
        ),
      ),
    );
  }
}