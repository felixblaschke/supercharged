
import 'dart:convert';

extension ObjectJson on Object {

  //TODO needs doc
  //TODO needs test

  String toJSON({Object toEncodable(Object nonEncodable)}) {
    return jsonEncode(this, toEncodable: toEncodable);
  }
}