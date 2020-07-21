import 'package:flutter/material.dart';
import 'package:flutter_funcional/model/cep_model.dart';

class LocalityPage {
  static buildPage(BuildContext context, String title,
    Function update, Function clear, CepModel model) {
    //
    return Scaffold(
      //
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      //
      body: Center(
        child: Column(
          mainAxisAlignment:
            MainAxisAlignment.center,
          //
          children: <Widget>[
            //
            model.loading
              ? CircularProgressIndicator()
              : Text(model.locality),
            //
            SizedBox(
              height: 20,
            ),
            //
            Row(
              mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
              //
              children: <Widget>[
                //
                RaisedButton(
                  onPressed: update,
                  child: Text(
                    'Update',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.green,
                ),
                //
                RaisedButton(
                  onPressed: clear,
                  child: Text(
                    'Clear',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                ),
                //
              ],
            )
            //
          ],
        ),
      ),
    );
  }
}
