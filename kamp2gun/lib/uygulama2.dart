
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),

     home: Scaffold(
       appBar: AppBar(
         title: Text("resim ekleme türleri"),
         ),
       
       body: ImageTurleri(),
       )
    
    );
  }
}

class ImageTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.pink[100],
      width: double.infinity, //container'ın enine komple kaplamak için 
      height: MediaQuery.of(context).size.height, //MediaQuery.of(context).size.height: ekran boyutu kadar yüksekliğin tüm ekranı kaplamak için 
      
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(  //Ekrana göre sığdırma işlemi yapar.
              child: Container(
                child: Image.asset("resimler/resim.png") //Image.asset: proje klasöründen bir resim eklemek istenildiği zaman kullanılır.
                ),
              ),

              Expanded(  
              child: Container(
                child: Image.network("https://i.pinimg.com/236x/02/97/36/0297367681ea3b225e2fc96aa11cda8b.jpg") //Image.network: internetten çektiğimiz resim url.si ile yapılır.
                ),
              ),

              Expanded(  
              child: Container(
                child: Image.asset("resimler/resim.png")
                ),
              ),

              Expanded(  
              child: Container(
                child: Image.asset("resimler/resim.png")
                ),
              ),

              Expanded(  
                child: Container(
                child: Image.asset("resimler/resim.png")
                ),
              ),
            ],
            ),
     
          Row(
            children: <Widget>[

              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar( //CircleAvatar: resmi avatar gibi yuvarlak içine almak için kullanılır.
                    radius: 38, //resmin zemin boyutu 
                    backgroundImage: NetworkImage("https://i.pinimg.com/236x/02/97/36/0297367681ea3b225e2fc96aa11cda8b.jpg"),
                  ),
                ),
              ),


              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar( //avatar olark resim eklemek için
                    radius: 38,
                  backgroundImage: AssetImage("resimler/resim.png"),
                  ),
                ),
              ),
            ],
          ),

        Row( 
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              child: FadeInImage.assetNetwork( //FadeInImage.assetNetwork: yavaş internet bağlantılarında resmin yükleme süresinin arasına loading gifi ekledik. resim yüklenene kadar bu gif'in görünmesini sağlar
              placeholder: "resimler/loading.gif", //placeholder: gif'in dosya yolunu belirledik.
              image: "https://cdn131.picsart.com/317495626124201.jpg?type=webp&to=min&r=640", //internetten çekilecek olan resmin url'i belirledik.
            )
            )
  
          ]
        )
      ],
      ),
    );
  }
}