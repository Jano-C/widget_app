import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Elevated Button')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Button')),
            ElevatedButton.icon(onPressed: (){}, label: const Text('Elevated Button'), icon: const Icon(Icons.access_alarm_rounded)),
            FilledButton(onPressed: (){}, child: Text('hola')),
            FilledButton.icon(onPressed: (){}, label: Text('data'), icon: Icon(Icons.accessibility_new_rounded)),
            OutlinedButton(onPressed: (){}, child: Text('data')),
            OutlinedButton.icon(onPressed: (){}, label: Text('data'), icon: Icon(Icons.terminal_rounded)),
            TextButton(onPressed: (){}, child: Text('data')),
            TextButton.icon(onPressed: (){}, label: Text('data'), icon: Icon(Icons.api_sharp)),
            IconButton(onPressed: (){}, icon: Icon(Icons.app_registration_rounded)),
            IconButton(onPressed: (){}, icon: Icon(Icons.app_registration_rounded),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(color.primary),
              
            )
            ),
            const CustomButton(),
          ],

      
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              
          child: Text('hola mundo', style: TextStyle(color: Colors.white)) ,
          ),
        ),
      ),
    );
  }
}