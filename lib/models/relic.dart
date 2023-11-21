// To parse this JSON data, do
//
//     final relic = relicFromJson(jsonString);

import 'dart:convert';

List<Relic> relicFromJson(String str) => List<Relic>.from(json.decode(str).map((x) => Relic.fromJson(x)));

String relicToJson(List<Relic> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Relic {
  String model;
  int pk;
  Fields fields;

  Relic({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Relic.fromJson(Map<String, dynamic> json) => Relic(
    model: json["model"],
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields {
  int user;
  String name;
  int amount;
  String description;
  String bestRarity;
  String idealMainStat;
  int idealVariantAmount;

  Fields({
    required this.user,
    required this.name,
    required this.amount,
    required this.description,
    required this.bestRarity,
    required this.idealMainStat,
    required this.idealVariantAmount,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    user: json["user"],
    name: json["name"],
    amount: json["amount"],
    description: json["description"],
    bestRarity: json["best_rarity"],
    idealMainStat: json["ideal_main_stat"],
    idealVariantAmount: json["ideal_variant_amount"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "name": name,
    "amount": amount,
    "description": description,
    "best_rarity": bestRarity,
    "ideal_main_stat": idealMainStat,
    "ideal_variant_amount": idealVariantAmount,
  };
}
