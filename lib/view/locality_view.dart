import 'package:flutter/material.dart';
import 'package:flutter_funcional/model/cep_model.dart';
import 'package:flutter_funcional/view/locality_page.dart';
import 'package:flutter_funcional/update/update_view.dart';
import '../service/cep.dart' as cep;

class LocalityView extends StatefulWidget {
  @override
  _LocalityViewState createState() => _LocalityViewState();
}

class _LocalityViewState extends State<LocalityView> {
  CepModel model = CepModel('Nenhuma cidade', false);

  UpdateView updateView = UpdateView();

  void updateModel(Function update) => setState(() {
    model = update();
  });

  void clearModel(Function clear) => setState(() {
    model = clear();
  });

  @override
  Widget build(BuildContext context) {
    return LocalityPage.buildPage(
      context,
      'Flutter Funcional MVU',
      () => updateView.updateCep((function) => updateModel(function)),
      () => updateView.clearCep((function) => clearModel(function)),
      model,
    );
  }

}
