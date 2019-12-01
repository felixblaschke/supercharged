
import 'dart:convert';

extension ObjectJson on Object {

  //TODO needs work

  String toJSON({Object toEncodable(Object nonEncodable)}) {
    return jsonEncode(this, toEncodable: toEncodable);
  }
}