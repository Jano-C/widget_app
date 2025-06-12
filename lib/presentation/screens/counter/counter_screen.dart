import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/providers/counter_providers.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ClickCounter = ref.watch(counterprovider);
    final isDarkmode = ref.watch(isDarkmodeProvider);
    
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(isDarkmodeProvider.notifier).state = !isDarkmode;
            },
            icon: isDarkmode ? Icon(Icons.dark_mode_outlined) : Icon(Icons.light_mode_outlined),
          ),
         
        ],
      ),
      body: Center(child:  Text('valor : $ClickCounter', style: Theme.of(context).textTheme.titleLarge)),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterprovider.notifier).state++;
          
        },

        
        child: 
             const Icon(Icons.add)
            )
         
      );
    
  }
}