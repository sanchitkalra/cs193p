//
//  ContentView.swift
//  Memorise
//
//  Created by Sanchit Kalra on 12/11/20.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        return VStack {
            ForEach(viewModel.cards.shuffled()) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }
            .foregroundColor(.orange)
            .padding()
            .font(Font.largeTitle)
    }
}

struct CardView: View{
    var card: AppModel<String>.Card
    var body: some View{
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
                Text(card.content )
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
