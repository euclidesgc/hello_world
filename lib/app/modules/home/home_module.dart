import 'package:hello_world/app/modules/home/teste/teste_page.dart';

import 'teste/teste_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $TesteController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter("/teste", child: (_, args) => TestePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
