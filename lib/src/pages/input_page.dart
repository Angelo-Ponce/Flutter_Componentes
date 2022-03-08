import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  String _opcionSeleccionada = "Volar";

  List<String> _poderes = ['Volar', 'Rayos X', 'Velocidad', 'Super Fuerza'];

  TextEditingController _inputfieldDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Input'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          const Divider(),
          _crearEmail(),
          const Divider(),
          _crearPassword(),
          const Divider(),
          _crearFecha(context),
          const Divider(),
          _crearDropdown(),
          const Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_name.length}'),
          hintText: 'Please enter your name', // como el placeholder
          labelText: 'Name', // nombre de ingreso
          helperText: 'Name only', // texto ayuda
          suffixIcon: const Icon(Icons.accessibility), //Icono al final
          icon: const Icon(Icons.account_circle) // Icono al inicion
          ),
      onChanged: (valueName) {
        setState(() {
          _name = valueName;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Please enter your email', // como el placeholder
            labelText: 'Email', // nombre de ingreso
            suffixIcon: const Icon(Icons.alternate_email), //Icono al final
            icon: const Icon(Icons.email) // Icono al inicion
            ),
        onChanged: (valueEmail) => setState(() {
              _email = valueEmail;
            }));
  }

  Widget _crearPassword() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Please enter your password', // como el placeholder
            labelText: 'Password', // nombre de ingreso
            suffixIcon: const Icon(Icons.lock_open), //Icono al final
            icon: const Icon(Icons.lock) // Icono al inicion
            ),
        onChanged: (valuePassword) => setState(() {
              _password = valuePassword;
            }));
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputfieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Birthday date', // como el placeholder
          labelText: 'Birthday date', // nombre de ingreso
          suffixIcon: const Icon(Icons.perm_contact_calendar), //Icono al final
          icon: const Icon(Icons.calendar_today) // Icono al inicion
          ),
      onTap: () {
        //Que no se muestre el focus o teclado
        FocusScope.of(context).requestFocus(FocusNode());

        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2025),
        locale: const Locale('en', 'US'));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputfieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropDown() {
    List<DropdownMenuItem<String>> lista = [];

    for (var element in _poderes) {
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    }

    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: [
        const Icon(Icons.select_all),
        const SizedBox(width: 30.0,),
        DropdownButton(
          // items: const [
          //   DropdownMenuItem(
          //     child: Text('Hombre'),
          //     value: 'H',
          //   ),
          //   DropdownMenuItem(
          //     child: Text('Mujer'),
          //     value: 'M',
          //   )
          // ],
          value: _opcionSeleccionada,
          items: getOpcionesDropDown(),
          onChanged: (opt) {
            setState(() {
              _opcionSeleccionada = opt.toString();
            });
          },
        )
      ],
    );

    
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Name is: $_name'),
    );
  }
}
