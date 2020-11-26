import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'teste_controller.g.dart';

@Injectable()
class TesteController = _TesteControllerBase with _$TesteController;

abstract class _TesteControllerBase with Store {
  voltar() async {
    await Modular.to.showDialog(
        child: Dialog(
          
      child: Text(
          "Essa página foi aberta aravés comando 'Modular.to.pushReplacementNamed()';\n\n"
          "O pushReplacement, substitui a tela anterior por esta.\n\n"
          "Quando você fechar este diálogo, o comando Modular.to.pop(); será executado e a aplicação vai quebrar!!\n\n"
          "Este exemplo serve para exemplificar o empilhamento das telas utilizado nesta arquitetura.\n\n"
          "Analise o código no controller!"),
    ));

    Modular.to.pop();
  }
}
