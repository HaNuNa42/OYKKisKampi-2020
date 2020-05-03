import 'package:flutter/material.dart';      //temel widget kütüphanesi

void main (){
  runApp(MaterialApp(                      // MaterialApp: temel widgetleri içerisinde barırdığı için ekliyoruz. en genel widgettir.
   
   debugShowCheckedModeBanner: false,       // köşedeki debug yazısını false diyerek kaldırdık 

    theme: ThemeData( 
      primarySwatch: Colors.pink   
    ),
  
  home: Scaffold(                                    // Scaffold: ekran deemek. ekrana neler yapacaksak bu parantezlerin içine yazarız.
    appBar: AppBar(                                 //appBar uygulamanın yukarsındaki bar kısmını düzenlemek için kullanılır. 
      title: Text("flutter'da temel kavramlar",    //appBar'a baslik ekledik.
      style: TextStyle(
        fontSize: 12, color: Colors.yellow           //appBar'daki basliğin yazi boyutunu (fontsize) ve rengini (color) düzenledik.
      ),
    ),
  ), 

  floatingActionButton: FloatingActionButton( //floatingActionButton: bir buton çeşididir. sağ kenarda varsayılan buton olan yuvarlak butonu eklemek için kulanılır.
    onPressed: () { //butona tiklama ozelligi ekledik
       debugPrint("floating action butona tıklandı"); //debug console'muzda butona tıklanıp tıklanmamasını anlamak için yazı yazdırdık.
    },

    child: Icon( //butona icon ekleme özelliği ekledik.
      Icons.camera,   //icon'muzu hangi icon olacağını belirledik.
      size: 25,
    ),
  ),


  )
  )); 

  }