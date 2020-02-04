import 'dart:math';

import 'package:flutter/material.dart';


class AnimatedContainerPage extends StatefulWidget {

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width =50.0;
  double _heigth =50.0;
  Color _color   = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: Center(
        
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _heigth,
          decoration:  BoxDecoration(
          borderRadius:_borderRadius,
          color: _color
         ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm),
      onPressed:  _inicializarAni,
      ),
    );
  }
void _inicializarAni(){
  final randon = Random();
  setState(() 
    {
      _width  =randon.nextInt(300).toDouble();
      _heigth =randon.nextInt(300).toDouble();
      _color  = Color.fromARGB(
        randon.nextInt(300), 
        randon.nextInt(300),
        randon.nextInt(300),
        1);
        _borderRadius = BorderRadius.circular(randon.nextInt(100).toDouble());
    });
  }
}