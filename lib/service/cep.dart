import 'package:http/http.dart' as http;
import 'dart:convert';

typedef Future GetHttp(dynamic url, {Map<String, String> headers});
GetHttp get getHttp => http.get;

typedef dynamic JsonDecode(String source);
JsonDecode get jsonDecode => json.decode; 

// TROCAR O CEP
const String url = "https://cep.awesomeapi.com.br/json/58910000";

Future _getLocality(GetHttp getHttp, JsonDecode jsonDecode, String url) async {
  var response = await getHttp(url);

  var decode = jsonDecode(response.body);
  print(decode);
  return decode["city"];
}

Future getLocality() => _getLocality(getHttp, jsonDecode, url);