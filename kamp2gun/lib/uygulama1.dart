import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("buton türleri"),
          backgroundColor: Colors.deepOrange, //appBar'ın arkaplan rengini (backgroundColor) belirledik.
          ),

    body: ButonTurleri(),

    ),
    );
  }
}
  class ButonTurleri extends StatelessWidget { 
@override
Widget build(BuildContext context) {
return Container(

  color: Colors.yellow[100], //container rengini belirledik.
width: 500,  //containner genişliğini belirledik
height: 500, //containner yüksekliğini belirledik
  ///margin: EdgeInsets.symmetric(horizontal: 50), //symmetric(horizontal): her iki kenardan margin eklemek için kullanılır.

  child: Column(
    children: <Widget>[
      Text("Buton Türleri"),

      RaisedButton( //buton çeşididir. köşeli bir görünüme sahiptir. 
        onPressed: () => debugPrint("1.butona tıklandı"), 
        color: Colors.greenAccent,
        child: Text("Raissed Buton1"
        ),
      ),

      RaisedButton( 
        onPressed: () => uzakFonksiyon(), //RaisedButton'un baka bir kullanım çeşidi
        color: Colors.grey,
        child: Text("Raissed Buton2"),
      ),


        IconButton( //iconButton: başka bir buton çeşididir. adı üstünde belirlenen ikonun şeklini alan buton çeşididir.
          onPressed: (){
            debugPrint("icon butona tıklandı");
          },
          icon: Icon(
            Icons.android,
            color: Colors.green,
            size: 50, //size: icon boyutu
          ),
        ),

      FlatButton( //yazı butonu denilebilir. javadaki labele tıklanma özelliği olan label gibi.
        onPressed: () {
          debugPrint("flat butona tıklandı");
        },
        child: Text("Flat Button", style: TextStyle(fontSize: 25), 
        ),
        )

    ],
  ),
);

  }
} 

void uzakFonksiyon()
{
  debugPrint("2.butona tıklandı");
}