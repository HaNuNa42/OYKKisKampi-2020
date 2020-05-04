
import 'package:flutter/material.dart';

void main() => MyApp();
class MyApp extends StatelessWidget{ //statelessWidget: herhaangi bir state durumunun olmaması. kelime anlamı olarak bağımsz durum anlamına gelmektedir. yani kendi widgetiizi yazarken herhangi bir duruma bağlamadan ekrana yazdırmak istediklerimiz için yaptığımız bir nevi konteynır gibi düşünülebilir.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),

      home: Scaffold(
        appBar: AppBar(title: Text("list view")),
        ),
    );
  }
}

  class BodyLayout extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
   
    return _mylistview1(context);
    }
  }

Widget _mylistview1(BuildContext context) {
  final ulkeler = ["türkiye", "polonya", "azerbaycan", "sudan"
                    ,"somali", "suriye", "italya", "rusya"
                    , "arnavutluk"];

                    return ListView.builder(
                      itemCount: ulkeler.length,
                      itemBuilder: (context, index) {

                        return ListTile(
                          title: Text(ulkeler[index]),
                          subtitle: Text("ülke"),
                          onTap: ()=>print(ulkeler[index] + "tıklandığında"), //listedeki veriye tıklanma özelliği ekledik.
                        );
                      },
                    );
}


Widget mylistview2(BuildContext context){
  return ListView(
    children: ListTile.divideTiles( //dividetiles listviewdeki ögeleri birbirinden ayırmak için kullanılır. aralarına gölgelik tarzı bir çizgi ekler
      context: context,
      tiles: [
        ListTile( //listwiewdeki her bir yazı bölümü için kullanılır. bir nevi gruplama gibi
          leading: CircleAvatar(child: Icon(Icons.person), radius: 15), //listedeki ögenin basına ikon ekleme
          title: Text("HATİCE"),
          trailing: Icon(Icons.arrow_forward_ios), //listedeki ögenin sonuna ikon ekleme
          subtitle: Text("bu bir subtitle") //subtitle alt başlık ekleMek için kullanılır.
        ),

        ListTile(
          leading: CircleAvatar(child: Icon(Icons.person), radius: 15),
          title: Text("NUR"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),

        ListTile(
          leading: CircleAvatar(child: Icon(Icons.person), radius: 15),
          title: Text("NALBANT"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    ).toList(),
    );
}


