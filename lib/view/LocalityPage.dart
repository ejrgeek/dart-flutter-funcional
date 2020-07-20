import 'package:flutter/material.dart';
import 'package:flutter_funcional/model/cep_model.dart';

class LocalityPage {
  static buildPage(BuildContext context, String title, Function update, Function clear, CepModel model){
    return Scaffold(
      //
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            onPressed: clear,
            icon: Icon(Icons.clear),)
        ],
      ),
      //
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            model.loading
            ? CircularProgressIndicator()
            : Text(model.locality)
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