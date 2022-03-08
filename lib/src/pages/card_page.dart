import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Titulo'),
            subtitle: Text('Subtitulo de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(child: const Text('Cancelar'), onPressed: () {}),
              TextButton(child: const Text('OK'), onPressed: () {})
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Column(
      children: [
        // Cargar imagen de espera mientras carga la original
        const FadeInImage(
          placeholder: AssetImage('asset/jar-loading.gif'),
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
          height: 150.0,
          // fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
        // const Image(
        //   image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
        // ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: const Text('Nombre de la imagen'),
        )
      ],
    );

    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
        ),
    );
  }
}
