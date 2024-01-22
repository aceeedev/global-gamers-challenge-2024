import 'package:isar/isar.dart';

part 'decision_card.g.dart';

@collection
class DecisionCard {
  Id? id;
  String? description;
  int? valueOne;
  int? valueTwo;
  int? valueThree;
  int? valueFour;
  List<int>? yesSubIds;
  List<int>? noSubIds;

  DecisionCard(
      {this.id,
      this.description,
      this.valueOne,
      this.valueTwo,
      this.valueThree,
      this.valueFour,
      this.yesSubIds,
      this.noSubIds});

  factory DecisionCard.fromJson(Map<String, dynamic> json) {
    return DecisionCard(
      id: json['id'],
      description: json['description'],
      valueOne: json['values']['value 1'] ?? 0,
      valueTwo: json['values']['value 2'] ?? 0,
      valueThree: json['values']['value 3'] ?? 0,
      valueFour: json['values']['value 4'] ?? 0,
      yesSubIds: json['sub ids']['yes'] ?? [],
      noSubIds: json['sub ids']['no'] ?? [],
    );
  }
}
