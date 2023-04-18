import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String info1;
  const Page2(this.info1, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PAGINA 2"),
      ),
      body: Center(
        child: Container(
          child: Text(info1),
        ),
      ),
    );
  }
}