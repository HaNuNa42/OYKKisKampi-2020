import 'package:flutter/material.dart'; //temel widget kütüphanesi

void main (){
  runApp(MyApp());
}

  class MyApp extends StatefulWidget{

    State<StatefulWidget> createState() => MyApp2();

  }
  
  class MyApp2 extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: new Scaffold(
        appBar: AppBar(

        ),

        body: Center(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center, //üstten ortalamak için (x ekseni)
          //crossAxisAlignment: CrossAxisAlignment.center, //alttan ortalamak için (y ekseni)
          children: <Widget>[

            FloatingActionButton( onPressed: () {} ,
              child: Icon(Icons.photo
              ),
            ),
            Text("column örnekleri")


          ],

        )
        ),

      )

    );
  }

  }