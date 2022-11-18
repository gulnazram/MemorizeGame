//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by Gulnaz on 04.10.2022.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["🚲", "🚂", "🚀", "🚁", "🚜", "🚘", "⛵️", "🚃", "🚖", "🚛", "🚠", "🚑", "🏍", "🛶", "🚒", "🚢", "🛴", "🚎", "🛺", "🏎", "✈️", "🚗", "🚔", "🚤", "🚕", ]
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 15) { pairIndex in
            emojis[pairIndex]
            
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
