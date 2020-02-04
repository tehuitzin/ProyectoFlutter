import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert 403 no encotro el servidor'),
      ),
      body: Center(
        child: RaisedButton(
        child:Text('Mostrar alerta') ,
        color: Colors.blue,
        textColor:Colors.white,
        shape: StadiumBorder(),
        onPressed: ()=> _mostrarContex(context),
           //Navigator.pop(context);
        ),
        ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.exit_to_app),
      onPressed: (){
        
        Navigator.pop(context);
      },),
      
    );
  }
  void _mostrarContex (BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){


        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0)),
          title: Text('Alert...!'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Es el contenido'),
              FlutterLogo(size: 100.0),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: (){
                Navigator.of(context).pop();
              },)
          ],);
      }
    );
  }
}