import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int valueCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter page'),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Contador', style: TextStyle(
                fontSize: 24
              ),),
              Text('$valueCounter',
              style: const TextStyle(
                fontSize: 44,
                color: Colors.teal,
                fontWeight: FontWeight.bold
              ),)
            ],
          )
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buttonReset(),
          const Spacer(),
          buttonIncrement(),
          const SizedBox(width: 12,),
          buttonDecrement()
        ],
      )
    );
  }

  Widget buttonIncrement() {
    return TextButton(
      onPressed: (){
        setState(() {
          valueCounter++;
        });
      },
      child: const Icon(Icons.add, color: Colors.white,),
      style: TextButton.styleFrom(
        backgroundColor: Colors.teal.shade300,
      ),
    );
  }

  Widget buttonDecrement() {
    return TextButton(
      onPressed: (){
        setState(() {
          valueCounter--;
        });
      },
      child: const Icon(Icons.remove, color: Colors.white,),
      style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
    );
  }

  Widget buttonReset() {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: TextButton(
        onPressed: (){
          setState(() {
            valueCounter=0;
          });
        },
        child: const Icon(Icons.exposure_zero, color: Colors.white),
        style: TextButton.styleFrom(
          backgroundColor: Colors.blueGrey),
      ),
    );
  }
}