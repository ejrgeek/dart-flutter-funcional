import 'package:flutter/material.dart';
import 'package:flutter_funcional/model/cep_model.dart';

class LocalityPage {
  static buildPage(BuildContext context, String title, Function update, CepModel model){
    return Scaffold(
      //
      appBar: AppBar(
        title: Text(title),
      ),
      //
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: model.loading
          ? <Widget>[
            CircularProgressIndicator()
          ]
          : <Widget>[
            Text(model.locality)
          ]
        ),
      ),
      //
      floatingActionButton: FloatingActionButton(
        onPressed: update,
        tooltip: 'Atualizar',
        child: Icon(Icons.update),
      ),
    );
  }
}