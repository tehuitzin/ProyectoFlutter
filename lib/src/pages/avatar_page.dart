import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  static final pageName ='avatar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRdt0J2PfwWiBd4RGT56Krx90Z-66_AySOx-O0RZ6r-SvOospx1'),
              radius: 25.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRdt0J2PfwWiBd4RGT56Krx90Z-66_AySOx-O0RZ6r-SvOospx1'),
          placeholder: AssetImage('assets/images.jpeg'),
          fadeOutDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
