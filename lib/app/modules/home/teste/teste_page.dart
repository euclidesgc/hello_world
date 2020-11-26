import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'teste_controller.dart';

class TestePage extends StatefulWidget {
  final String title;
  const TestePage({Key key, this.title = "Teste"}) : super(key: key);

  @override
  _TestePageState createState() => _TestePageState();
}

class _TestePageState extends ModularState<TestePage, TesteController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text("Página de Teste"),
          SizedBox(height: 16),
          InkWell(
            onTap: controller.voltar,
            child: Container(
              padding: EdgeInsets.all(8),
              child: Text("Voltar"),
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
