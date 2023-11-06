class Translate1 {
  Translate1({
      this.status, 
      this.data,});

  Translate1.fromJson(dynamic json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? status;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.translatedText,});

  Data.fromJson(dynamic json) {
    translatedText = json['translatedText'];
  }
  String? translatedText;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['translatedText'] = translatedText;
    return map;
  }

}