import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),


      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.exit_to_app),
      onPressed: (){
        
        Navigator.pop(context);
      },),
      body: ListView(
        
          padding:EdgeInsets.all(10.0),
          children: <Widget>[
            //Copiado para ver el Scroll
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
             SizedBox(height: 30.0,),
             _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
             SizedBox(height: 30.0,),
             _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
             SizedBox(height: 30.0,),
             _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
             SizedBox(height: 30.0,),
             _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
             SizedBox(height: 30.0,),
             _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
             SizedBox(height: 30.0,),
             _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
             SizedBox(height: 30.0,),
             _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
             SizedBox(height: 30.0,),
        ]
      ),
    );
  }
          Widget _cardTipo1(){
            
            return Card(
               elevation: 10.0,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.phone_android, color: Colors.blue,),
                    title: Text('Es solo texto'),
                    subtitle: Text('Aqui es la descripcion'),
                  ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(child: Text('Cancelar'),
                        onPressed: (){},
                        ),
                        FlatButton(child: Text('ok'),
                        onPressed: (){
                          
                        },
                        )
                      ],
                    ),
                ],
              ),
            );
          }
  }


Widget _cardTipo2() {
  return Card(
    //para que no se salga lo que contiene
    clipBehavior: Clip.antiAlias,
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0)),
    child: Column(
      children: <Widget>[
        FadeInImage(
           image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.w3schools.com%2Fcss%2Fcss_image_gallery.asp&psig=AOvVaw3Q5Bp_yfOadt6NylAwCVtB&ust=1580582562828000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLDEy4O_rucCFQAAAAAdAAAAABAY'),
           placeholder: AssetImage('assets/batman.jpeg'),
           fadeInDuration: Duration(milliseconds: 200),
           height: 250.0,
           fit: BoxFit.cover,
       ),
       
        Container(
         padding: EdgeInsets.all(10.0),
          child: Text('Descripcion'),
        )
      ],
    ),
    
  );
}
