//
//  EmojiMemoryGame.swift
//  Memorise
//
//  Created by Sanchit Kalra on 15/11/20.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: AppModel<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> AppModel<String> {
        let emojis: Array<String> = ["😂", "👻", "🥳", "😜", "😱", "🤖"]
        return AppModel<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access the model
    var cards: Array<AppModel<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: AppModel<String>.Card) {
        model.choose(card: card)
    }
    
}
