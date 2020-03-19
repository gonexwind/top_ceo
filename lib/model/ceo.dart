import 'dart:convert';

class Ceo {
  final int id;
  final String name, imgQuote, ceo, age, wealt, employee;

  Ceo(
      {this.id,
      this.name,
      this.imgQuote,
      this.ceo,
      this.age,
      this.wealt,
      this.employee});

  factory Ceo.fromJson(Map<String, dynamic> json) {
    return Ceo(
      id: json['id'],
      name: json['name'],
      imgQuote: json['imgQuote'],
      ceo: json['ceo'],
      age: json['age'],
      wealt: json['wealt'],
      employee: json['employee'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imgQuote': imgQuote,
      'ceo': ceo,
      'age': age,
      'wealt': wealt,
      'employee': employee,
    };
  }

  @override
  String toString() {
    return 'Ceo{id: $id, name: $name, imgQuote: $imgQuote, ceo: $ceo, age: $age, wealt: $wealt, employee: $employee}';
  }
}

List<Ceo> ceoFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Ceo>.from(data.map((_) => Ceo.fromJson(_)));
}

String ceoToJson(Ceo data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
