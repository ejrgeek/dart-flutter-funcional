import 'package:flutter_funcional/model/cep_model.dart';
import '../service/cep.dart' as cep;

class UpdateView {

  void updateCep(Future getLocality(), Function update) async {
    update(() => CepModel('Nenhuma cidade', true));

    var locality = await cep.getLocality();

    update(() => CepModel(locality, false));
  }

  void clearCep(Future getLocality(), Function clear) async {
    clear(() => CepModel('Nenhuma cidade', false));
  }
}
