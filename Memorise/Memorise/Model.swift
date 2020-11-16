//
//  Model.swift
//  Memorise
//
//  Created by Sanchit Kalra on 15/11/20.
//

import Foundation

struct AppModel<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        
    }
}
