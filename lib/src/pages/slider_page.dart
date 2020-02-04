import 'package:flutter/material.dart';
class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _checkBox(),
              _crearSwitches(),
              Expanded(
                child: _crearImagen()
                ),
            ],
          ),
        ),
      );
  }
  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño Imagen',
      //divisions: 5,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,//desicion
      onChanged:(_bloquearCheck)? null:(valor){
        setState(() {
          _valorSlider = valor;
        });
    });
  }

  Widget _checkBox(){
            //return Checkbox(
            //  value: _bloquearCheck,
             // onChanged: (valor){
              //  setState(() {
               //   _bloquearCheck = valor;
               // });
              //},
           // );
           return CheckboxListTile(
             title: Text('Bloaquear CheckboxListTile'),
             value: _bloquearCheck,
              onChanged: (valor){
              setState(() {
              _bloquearCheck = valor;
               });
              },
           );
  }
 Widget _crearSwitches (){
   return SwitchListTile(
             title: Text('Bloaquear SwitchListTile'),
             value: _bloquearCheck,
              onChanged: (valor){
              setState(() {
              _bloquearCheck = valor;
               });
              },
           );
 }


  Widget _crearImagen(){
    return Image.asset('assets/Spanner.jpg',
    width: _valorSlider,
    fit: BoxFit.contain,);
}
}