import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Components temp"),
      ),
      body: ListView(
        children: _crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = <Widget>[];
    for(var opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
           ..add(const Divider());
    }
    return lista;
  }
  
  List<Widget> _crearItemsCorto(){
    return opciones.map((item){
      return Column(
        children: [
          ListTile(
            subtitle: Text("Subtitle"),
            title: Text(item+'!'),
            leading: const Icon(Icons.ac_unit_outlined),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){},
          ),
          const Divider()
        ],
      );
    }).toList();
  }
}
