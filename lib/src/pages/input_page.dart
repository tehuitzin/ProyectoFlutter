

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email  = '';
  String _fecha  = '';
  String _opcionSelecionada  = 'volar';
  TextEditingController _inputFieldController = new TextEditingController();
  List<String > _poderes = ['volar','Rayos x','Super Aliento','Super Fuerza'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imput'),
        
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
         _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdows(),
          Divider(),
          _crearPersona(),
          
                  ],
                ),
              );
            }
          
Widget _crearInput() {
  return TextField(
    autofocus: true,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
     counter: Text('counte Letras ${_nombre.length}'),
      hintText: 'hintText',
      labelText: 'labelText Nombre',
      helperText: 'helperText',
      suffixIcon: Icon(Icons.accessibility),
      icon: Icon(Icons.account_circle)
    ),
    onChanged: (valor){
      setState(() {
        _nombre= valor;
      });
    },
  );
}

Widget _crearEmail(){
  return TextField(
    autofocus: true,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
     counter: Text('counte Letras ${_nombre.length}'),
      hintText: 'hintText',
      labelText: 'labelText Email',
      helperText: 'helperText',
      suffixIcon: Icon(Icons.accessibility),
      icon: Icon(Icons.email)
    ),
    onChanged: (valor){
      setState(() {
        _email= valor;
      });
    },
  );
}
Widget _crearPassword(){
   return TextField(
    autofocus: true,
    obscureText: true,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
     counter: Text('counte Letras ${_nombre.length}'),
      hintText: 'hintText',
      labelText: 'labelText Password',
      helperText: 'helperText',
      suffixIcon: Icon(Icons.accessibility),
      icon: Icon(Icons.lock)
    ),
    onChanged: (valor){
      setState(() {
        _email= valor;
      });
    },
  );
}

Widget _crearFecha(BuildContext context){
   return TextField(
     enableInteractiveSelection: false,
     controller: _inputFieldController,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Fecha Nacimiento',
      labelText: 'labelText fecha',
      suffixIcon: Icon(Icons.calendar_today),
      icon: Icon(Icons.calendar_today)
    ),
    onTap:(){
      FocusScope.of(context).requestFocus(new FocusNode());
      _selectDate(context);

    } ,
  );
}
_selectDate(BuildContext context) async{
  DateTime picked = await showDatePicker(
    context: context,
    initialDate:  new DateTime.now(),
    firstDate: new DateTime(2018,),
    lastDate: new DateTime(2025),
    locale: Locale('es','ES')


  );
  if(picked !=null){
    setState(() {
      _fecha = picked.toString();
      _inputFieldController.text = _fecha;
    });
  }


}
List<DropdownMenuItem<String>> getOPcionesDropdows(){
  
  List<DropdownMenuItem<String>>lista = new List();
 _poderes.forEach((poderr){
  
  lista.add(DropdownMenuItem(
    child: Text(poderr),
    value: poderr,
  ));
});

return lista;
}

Widget _crearDropdows(){
  
  return Row(
children: <Widget>[

  Icon(Icons.select_all),
  SizedBox(width:30.0 ,),
  Expanded(
      child: DropdownButton(
        value: _opcionSelecionada,
        items: getOPcionesDropdows(),
        onChanged: (opt){
          setState(() {
            _opcionSelecionada =opt;
          });
        },
      ),
  )
  ],
    );
}











Widget _crearPersona(){
  return ListTile(
    title: Text('Nombre es $_nombre'),
    subtitle: Text('Email es $_email'),
    trailing: Text(_opcionSelecionada),
  );
}
}




























