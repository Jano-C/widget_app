import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});
  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Este es el contenido del dialogo'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(onPressed: ()=> Navigator.of(context).pop(), child: const Text('Aceptar'))
        ],
        
      )
    );
  }

  void showCustomSnackbar(BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola soy un snackbar'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Cerrar',
          onPressed: () {}, ),
        
      )
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar y dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(onPressed: (){
              showAboutDialog(
                context: context,
                children: [
                  const Text('Este es un dialogo de licencias'),
                ]

              );
            }, child: const Text('Liencias usadas')),
            FilledButton.tonal(onPressed: (){
              openDialog(context);
            }, child: const Text('Mostrar dialogos'))

          ],
          
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context)
        
        
       
      ),
    );
  }
}