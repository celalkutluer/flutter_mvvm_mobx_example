import 'dart:convert';

import 'package:crypto/crypto.dart';

String encodePass(String pass) {
  var bytes = utf8.encode(md5.convert(utf8.encode(pass)).toString()); // data being hashed
  var digest = sha256.convert(bytes); // Hashing Process
  return base64Encode(utf8.encode(digest.toString()));
}

String base64Decode(String value) {
  return utf8.decode(base64.decode(value));
}
