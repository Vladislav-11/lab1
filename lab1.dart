import 'package:flutter/material.dart';

void main() {
  runApp( const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("Сделано Галяутдиновым",),
              Counter()
            ]
          ),
        ),
      ),
    );
  }
}
  class Counter extends StatefulWidget 
  {
   const Counter({super.key});
   @override
   State<StatefulWidget> createState()
    {
    return CounterState();
    }
  }
  class CounterState extends State<Counter>
  {
    int counter = 0;
    @override
    Widget build(BuildContext context)
    {
      return ElevatedButton(
        onPressed: ()
        {
          setState(() 
          {
            counter++;
          });
        },
         style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
         ),
        child: Text("счетчик: $counter",
        style: const TextStyle(color: Colors.pink, fontSize: 48, fontStyle: FontStyle.italic),
        ),
      );
    }
    
  }