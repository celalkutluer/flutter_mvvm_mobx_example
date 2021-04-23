import '../../../core/base/base_functions.dart';

class PersonelModel {
  String? id;
  String? perTc;
  String? perAdSoyad;

  PersonelModel({this.id, this.perTc, this.perAdSoyad});

  PersonelModel.fromJson(Map<String, dynamic> json) {
    id = base64Decode(json['id']);
    perTc = base64Decode(json['per_tc']);
    perAdSoyad = base64Decode(json['per_ad_soyad']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['per_tc'] = perTc;
    data['per_ad_soyad'] = perAdSoyad;

    return data;
  }
}

/* Model Json
[
  {
    "id": "MTA=",
    "per_tc": "MzYzMTgxNjIzNzM=",
    "per_ad_soyad": "QS7Dh0VUxLBOIEVSQVNMQU4=",
    "isOperation": true,
    "desc": "işlem başarılı =>>getPersonelForMainPage"
  }
]
*/
