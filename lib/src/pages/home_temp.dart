import 'package:flutter/material.dart';


class HomePageTamp extends StatelessWidget {

final opciones =['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cmpunetes Temp'),
      ),
      body: ListView(
       // children: _createItems()
       children: crearItemsCorto(),
      ),
    );
}

//metodo
List<Widget>crearItemsCorto(){
  return opciones.map(( item ){
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(item + '!'),
          subtitle:Text('Subtile') ,
          leading: Icon(Icons.phone,color: Colors.blue,),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            print('precionaste');
          },
        ),
        Divider()
      ],
    );
  }).toList();
}
}