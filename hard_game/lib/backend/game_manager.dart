import 'package:hard_game/backend/db_manager.dart';
import 'package:hard_game/models/decision_card.dart';

class GameManager {
  List<DecisionCard> cards;

  /// Use GameManager().init() to initialize
  GameManager({required this.cards});

  static init() async {
    List<DecisionCard> allCards = await CardDB.instance.getAllCards();

    return GameManager(cards: allCards);
  }

  // shuffle cards
  List<DecisionCard> shuffleCards(List<DecisionCard> cardsToShuffle) {
    List<DecisionCard> cards = cardsToShuffle;
    cards.shuffle();

    return cards;
  }

  /// returns next card in deck
  DecisionCard nextCard() {
    cards.removeAt(0);

    return getCurrentCard();
  }

  /// gets the first card in the deck
  DecisionCard getCurrentCard() {
    return cards.first;
  }
}
