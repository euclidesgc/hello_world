import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Contador"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    print("passou aqui");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Observer(builder: (_) {
            return Text("Este botão foi apertado ${controller.value} vezes: ");
          }),
          Container(
            alignment: Alignment.center,
            child: RaisedButton(
              child: Text("Incrementar mobx"),
              onPressed: controller.increment,
            ),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                controller.increment();
                print("Apertou o botão setState!");
              });
            },
            child: Text("Incrementar setState"),
          ),
          RaisedButton(
            child: Text("CHAMAR PAGINA DE TESTE"),
            onPressed: controller.chamarPaginaTeste,
          )
        ],
      ),
    );
  }
}
