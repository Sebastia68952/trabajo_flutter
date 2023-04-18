import 'package:flutter/material.dart';
import 'package:trabajo_2/pages/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Material App",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    TextEditingController _text1 = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: Text("PAGINA 1"),
      ),
      body: Column(
        children:[
          Container(padding: EdgeInsets.all(20), child: TextField(
            controller: _text1,
             decoration: InputDecoration(
               hintText: "Ingrese Nombre"
             ),
          )),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Page2(_text1.text)));
            },
            child: Text("Enviar segunda pantalla"),
          )
        ],
      ),
    );
  }
}