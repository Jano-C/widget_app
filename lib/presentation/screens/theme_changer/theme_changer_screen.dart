
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/screens/screens.dart';

class ThemeChangerScreen extends ConsumerWidget {

  

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

     final isDarkmode = ref.watch(themeNotifierProvider).isDarkmode;

      

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Theme Changer Screen'),
        actions: [
          IconButton(
            onPressed: () {
              //ref.read(isDarkmodeProvider.notifier).state = !isDarkmode;
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
             
            },
            icon: isDarkmode ? Icon(Icons.dark_mode_outlined) : Icon(Icons.light_mode_outlined),
          ),
        ],
      ),
      body: _ThemeChangerView(),    
      
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const  _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final changeColor = ref.watch(themeNotifierProvider).selectedColor;
    
   
    // ignore: non_constant_identifier_names
    final List<Color> Colors = ref.watch(colorListProvider);

  //final int selectedColor = ref.watch(selectedColorProvider);

  
  {
    return ListView.builder(
      itemCount: Colors.length,
      itemBuilder:(context, index) {
        final color = Colors[index];
        
        
      return RadioListTile(
        title: Text('Este color', style: TextStyle(color : color)),
        
        // ignore: deprecated_member_use
        subtitle: Text('${color.value}'),
        activeColor: color,
        value: index,
         groupValue: changeColor, 
         onChanged: (value){
          if (value == null) return;

         ref.read(themeNotifierProvider.notifier).changeColor(value);

         
         });
    });
  }
}
}