import 'package:flutter/material.dart';
import 'dart:async';
class ListaPage extends StatefulWidget {
  ListaPage({Key key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
 
 ScrollController _scrollController = new ScrollController();
 List<int> _listaNumeros = new List();
 int _ultimoItm=0;
 bool _estaCargarndo= false;
 @override

  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar();

    _scrollController.addListener((){

     if(_scrollController.position.pixels==_scrollController.position.maxScrollExtent)
     //_agregar();
     fetchData();

    });
  }
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),

      ),
      body:Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      )
      
      
    );
    
  }
  Widget _crearLista(){
    return RefreshIndicator(
      onRefresh: obtenerPagina,


          child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index){
          return FadeInImage(
          image:NetworkImage('https://i.picsum.photos/id/$index/2500/1667.jpg'),        
          placeholder:AssetImage('assets/Spanner2.jpg'),
      );
        },
      ),
    );
  }
  Future<Null>obtenerPagina() async{
    final duration = new Duration(seconds: 1);
     new Timer(duration, (){
      _listaNumeros.clear();
      _ultimoItm++;
      _agregar();

     } );
     return Future.delayed(duration);
    
  }
  _agregar(){
    for(var i =0; i<10;i++){
    _ultimoItm++;
    _listaNumeros.add(_ultimoItm);

  }
  setState(() {});
  }
  Future<Null> fetchData() async{
  _estaCargarndo= true;
  setState(() {
    

  });
  final duration = new Duration(seconds: 2);
  new Timer(duration, respuestaHTTP);
}
void respuestaHTTP(){
  _estaCargarndo = false;
  _scrollController.animateTo(
    _scrollController.position.pixels+100,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds:250 ));
  _agregar();
}
Widget _crearLoading(){
  if(_estaCargarndo){
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator()

          ],
        ),
        SizedBox(height: 15.0,),



      ],
    );
    
    
    
    

  }else{
    return Container(

    );
  }
}
}