import 'package:flutter/material.dart';
import 'package:flutter_funcional/model/cep_model.dart';
import 'package:flutter_funcional/view/locality_page.dart';
import '../service/cep.dart' as cep;

class LocalityView extends StatefulWidget {
  @override
  _LocalityViewState createState() => _LocalityViewState();
}

class _LocalityViewState extends State<LocalityView> {

  CepModel model = CepModel('Nenhuma cidade', false);

  void updateModel (Function update) => setState((){ model = update(); });
  void clearModel (Function clear) => setState((){ model = clear(); });

  void _updateCep(Future getLocality(), Function update) async {

    update(() => CepModel('Nenhuma cidade', true));

    var locality = await cep.getLocality();

    update(() => CepModel(locality, false));
  }

  void _clearCep(Future getLocality(), Function clear) async {

    clear(() => CepModel('Nenhuma cidade', false));
  }

  @override
  Widget build(BuildContext context) {
    
    return LocalityPage.buildPage(
      context,
      'Cidade',
      () => _updateCep( cep.getLocality, (function) => updateModel(function)),
      () => _clearCep( cep.getLocality, (function) => clearModel(function)),
      model
    );

  }
}