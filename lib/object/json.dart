
import 'dart:convert';

extension ObjectJson on Object {

  //TODO needs work

  String toJsonString({Object toEncodable(Object nonEncodable)}) {
    return jsonEncode(this, toEncodable: toEncodable);
  }
}