//
//  EmojiMemoryGame.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 12.10.2023.
//

import SwiftUI


class EmojiMemoryGame:ObservableObject{
    private static let emojis = ["🚗", "✈️", "🚆","🛳️","🚚","🐰"]
    
    
    private static func createMemoryGame() -> MemoryGame<String>{
        
        return MemoryGame(numberOfPairsOfCards: emojis.count) { pairIndex in
            if emojis.indices.contains(pairIndex){
                return EmojiMemoryGame.emojis[pairIndex]
                
            }else{
                return "😅"
            }
        }
    }
    
    
    @Published private var model = EmojiMemoryGame.createMemoryGame()
    
    
    var cards:[MemoryGame<String>.Card]{
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card){
        model.chooseCard(card)
        
        
    }
    
    func shuffle(){
        
        model.shuffle()
        
    }
    
}
