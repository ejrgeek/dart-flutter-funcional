import 'package:flutter/material.dart';
import 'package:flutter_funcional/model/cep_model.dart';
import 'package:flutter_funcional/view/LocalityPage.dart';
import '../service/cep.dart' as cep;

class LocalityView extends StatefulWidget {
  @override
  _LocalityViewState createState() => _LocalityViewState();
}

class _LocalityViewState extends State<LocalityView> {

  CepModel model = CepModel('Nenhum', false);

  void updateModel (Function update) => setState((){ model = update(); });

  void _updateCep(Future getLocality(), Function update) async {

    update(() => CepModel('Nenhum', true));

    var locality = await cep.getLocality();

    update(() => CepModel(locality, false));
  }

  @override
  Widget build(BuildContext context) {
    
    return LocalityPage.buildPage(
      context,
      'Cidade',
      () => _updateCep( cep.getLocality, (function) => updateModel(function)),
      model
    );

  }
}