import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(const Divider());
      //lista.add(const Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) => Column(
      children: [
        ListTile(
              title: Text(item + ' !'),
              subtitle: const Text('El subtitulo'),
              leading: const Icon(Icons.account_balance_wallet),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: (){},

        ),
        const Divider()
      ],
    )
        ).toList();

    
  }
}
