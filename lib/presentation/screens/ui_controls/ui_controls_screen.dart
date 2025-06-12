import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ui Controls + Tiles'),
      ),
      body: const _UiControlsView()
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}
enum Transportation {car, plane, boat, submarine}
class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantbreakfast = false;
  bool wantLunch = false;
  bool wantDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(

      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('controles adicionales'),
          value: isDeveloper, 
          onChanged: (value){
            isDeveloper = !isDeveloper;
            setState(() {});
          }),

          ExpansionTile(title: const Text('Vehiuculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
          
            RadioListTile(
            title: const Text('Car'),
            subtitle: const Text('viajar por carro'),
            value: Transportation.car, 
            groupValue: selectedTransportation, 
            onChanged: (value){
              selectedTransportation = Transportation.car;
              setState(() {});
            },
            ),
            RadioListTile(
            title: const Text('Boat'),
            subtitle: const Text('viajar por barco'),
            value: Transportation.boat, 
            groupValue: selectedTransportation, 
            onChanged: (value){
              selectedTransportation = Transportation.boat;
              setState(() {});
            },
            ),
            RadioListTile(
            title: const Text('Plane'),
            subtitle: const Text('viajar por avion'),
            value: Transportation.plane, 
            groupValue: selectedTransportation, 
            onChanged: (value){
              selectedTransportation = Transportation.plane;
              setState(() {});
            },
            ),
            RadioListTile(
            title: const Text('Submarine'),
            subtitle: const Text('viajar por submarino'),
            value: Transportation.submarine, 
            groupValue: selectedTransportation, 
            onChanged: (value){
              selectedTransportation = Transportation.submarine;
              setState(() {});
            },
            )],
          ),

        CheckboxListTile(
          title: const Text('Quiero desayunar?'),
          value: wantbreakfast,
           onChanged: (value){
            wantbreakfast = !wantbreakfast;
            setState(() {});
           }),
        CheckboxListTile(
          title: const Text('Quiero almorzar?'),
          value: wantLunch,
           onChanged: (value){
            wantLunch = !wantLunch;
            setState(() {});
           }),
        CheckboxListTile(
          title: const Text('Quiero cenar?'),
          value: wantDinner,
           onChanged: (value){
            wantDinner = !wantDinner;
            setState(() {});
           })
      ],
    );
  }
}