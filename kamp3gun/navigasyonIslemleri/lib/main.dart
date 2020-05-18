import 'package:flutter/material.dart';
import 'package:navigasyon_islemleri/verigetir.dart';
import 'package:navigasyon_islemleri/veriolansayfa.dart';
import 'package:navigasyon_islemleri/veriolansayfa2.dart';
import 'package:navigasyon_islemleri/yenisayfa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigasyon İşlemleri"),
          backgroundColor: Colors.blue,
        ),
        body: NavigasyonIslemleri(),
      ),
    );
  }
}

class NavigasyonIslemleri extends StatelessWidget {
  String gonderilenVeri = "Navigasyon İşlemleri Sayfasından Geldim! :) ehüehüehü";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute //material pageroute sayfalar arası çağırmak için kullanılır.
		(builder: (context) => ASayfasi())); //çağırdığımız sayfayı yönlendiriyoruz. 
          },
          child: Text("A sayfasına git"),
          color: Colors.blue[200],
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BSayfasi(gonderilenVeri)));
          },
          child: Text("B sayfasına veri gönder"),
          color: Colors.orange[200],
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push<bool>(
              context,
              MaterialPageRoute(builder: (context) => CSayfasi()),
            ).then((gelenDeger) {
              debugPrint("Pop işleminden gelen değer $gelenDeger");
            });
          },
          child: Text("C sayfasına git ve veri getir"),
          color: Colors.green[200],
        ),
        RaisedButton(
          //her şey tıklama özelliğinin içine yazıyoruz
          onPressed: () async {
            //yine navigator işlemlerini bir değere atıyoruz
            String value = await Navigator.push(context,
                new MaterialPageRoute<String>(
                  //navigator ile yönlendirdiğimiz widget
                builder: (BuildContext context) {
                  //center'ın içinde GestureDetector'a yönlendiriyoruz
                  return Center(
                    child: GestureDetector(
                      //yönlendirilen widget'ta bir container oluşturduk
                        child:  Container(
                          color: Colors.greenAccent,
                            //oluşturduğumuz container'da yazı çıkmasını tanımladık
                            child: Text('Ekran silindi,'
                                ' geri dönmek için tıklayın',
                            style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,)
                        ),

                        //onTap ile oluşturduğumuz GestureDetector'a tıklama özelliği verdik
                        onTap: () {
                          // burada pop ile kendini kapattı
                          Navigator.pop(context, "Anasayfaya dönüldü");
                        }
                    ),
                  );
                }
            )
            );
            //ekrana yazı consolda görünüyor
            print(value);
          },
          child: Text("Ekranı değiştirip geri dön"),
        ),

        RaisedButton(
          onPressed: () {
            // aşağıda kendi tanımladığımız fonksiyonu çağırıyoruz
            _navigateAndDisplaySelection(context);
          },
          child: Text("D sayfasına git, veri tipi getir ve göster"),
          color: Colors.green[200],
        ),
      ],
    );
  }

  //yukarıda çağırdığımız fonksiyonu tanımlıyoruz
  _navigateAndDisplaySelection(BuildContext context) async {
   // çektiğimiz veriyi bu sayfada kullanabilmek için
    // navigasyon işlemini bir değere atarak yapıyoruz
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DSayfasi()),
    );

    // Diğer sayfadan çektiğimiz veriyi, bu sayfada ekranda
    //göstermek için
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        // ekranda kalma süresi
          duration: Duration(seconds: 5),
          //yansıtma işlemi
          content: Text("Gelen verimiz: $result")));

  }


}
