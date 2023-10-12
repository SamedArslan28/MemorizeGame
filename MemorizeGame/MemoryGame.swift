//
//  MemorizeGame.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 12.10.2023.
//

import Foundation

//CardContent refers to type of the item that shown in card , emojis are string we used string in modelview
struct MemoryGame<CardContent> {
    //making this object set is private but looking is public
    private(set) var cards: [Card]
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = []
        
        for pairIndex in 0..<max(2,numberOfPairsOfCards){
            let content: CardContent = cardContentFactory(pairIndex)
            cards.append(Card( content: content))
            cards.append(Card( content: content))
        }
        
    }
    
    func chooseCard(_ card: Card){
        
        
    }
    
    mutating func shuffle(){
        cards.shuffle()
        
    }
    
    struct Card{
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
        
    }
    
}
