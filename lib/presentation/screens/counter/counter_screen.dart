import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CounterScreen extends StatelessWidget {

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Screen'),
      ),
      body: Center(child:  Text('valor 10', style: Theme.of(context).textTheme.titleLarge)),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=> context.pop(),
        // child: const Icon(Icons.arrow_back_ios_new_outlined),
        child: 
             const Icon(Icons.add)
            )
         
      );
    
  }
}