import 'package:isar/isar.dart';

part 'decision_card.g.dart';

@collection
class DecisionCard {
  Id? id;
  String? description;
  int? socialValue;
  int? environmentalValue;
  int? economicValue;
  int? peaceAndJusticeValue;
  int? governmentAndCommunityValue;
  List<int>? yesSubIds;
  List<int>? noSubIds;

  DecisionCard(
      {this.id,
      this.description,
      this.socialValue,
      this.environmentalValue,
      this.economicValue,
      this.peaceAndJusticeValue,
      this.governmentAndCommunityValue,
      this.yesSubIds,
      this.noSubIds});

  factory DecisionCard.fromJson(Map<String, dynamic> json) {
    return DecisionCard(
      id: json['id'],
      description: json['description'],
      socialValue: json['values']['soc'],
      environmentalValue: json['values']['env'],
      economicValue: json['values']['eco'],
      peaceAndJusticeValue: json['values']['pea'],
      governmentAndCommunityValue: json['values']['gov'],
      yesSubIds: json['sub ids']['yes'],
      noSubIds: json['sub ids']['no'],
    );
  }
}
