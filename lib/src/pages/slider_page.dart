import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  bool _bloquearCheck = false;

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Page'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        // divisions: 20,
        min: 10.0,
        max: 400.0,
        value: _valorSlider,
        onChanged: (_bloquearCheck)? null: ((newValue) {
          setState(() {
            _valorSlider = newValue;
          });
        })
      );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (newValue){
    //     setState(() => _bloquearCheck = newValue!);
    //   }
    // );

    return CheckboxListTile(
      title: const Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (newValue){
        setState(() => _bloquearCheck = newValue!);
      }
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: const Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (newValue){
        setState(() => _bloquearCheck = newValue);
      }
    );
  }

  Widget _crearImagen() {
    return Image(
      image: const NetworkImage(
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a98b22f7-727a-487b-b0a0-bd54703358cf/d7exjvc-0da2978c-fd5b-47fe-a3e8-47b9d12374b2.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E5OGIyMmY3LTcyN2EtNDg3Yi1iMGEwLWJkNTQ3MDMzNThjZlwvZDdleGp2Yy0wZGEyOTc4Yy1mZDViLTQ3ZmUtYTNlOC00N2I5ZDEyMzc0YjIucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.5qXQ3mkP-Rck3kREepL0OUHwrLqGPb7j9Z4f7TCaeX4'),
      width: _valorSlider,
    );
  }

}
