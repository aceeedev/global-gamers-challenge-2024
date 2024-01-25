import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:isar/isar.dart';
import 'package:hard_game/models/decision_card.dart';

class CardDB {
  static final CardDB instance = CardDB._init();
  static Isar? _isar;
  static const List<CollectionSchema<dynamic>> schemas = [DecisionCardSchema];

  CardDB._init();

  Future<Isar> get isar async {
    if (_isar != null) return _isar!;

    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(schemas, directory: dir.path, name: 'card DB');

    // initialize cards into database
    await initAllCards();

    return _isar!;
  }

  Future<void> initAllCards() async {
    final String jsonString = await rootBundle.loadString('assets/data.json');
    final List<Map<String, dynamic>> cardDataList = jsonDecode(jsonString);

    // check to see if cards have "changed"
    if (cardDataList.length != await (await isar).decisionCards.count()) {
      await (await isar).writeTxn(() async {
        for (Map<String, dynamic> cardData in cardDataList) {
          DecisionCard cardToAdd = DecisionCard.fromJson(cardData);

          await (await isar).decisionCards.put(cardToAdd);
        }
      });
    }
  }
}
