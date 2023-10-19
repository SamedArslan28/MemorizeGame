//
//  MemorizeGame.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 12.10.2023.
//

import Foundation

//CardContent refers to type of the item that shown in card , emojis are string we used string in modelview
struct MemoryGame<CardContent> where CardContent: Equatable {
    //making this object set is private but looking is public
    private(set) var cards: [Card]
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = []
        
        for pairIndex in 0..<max(2,numberOfPairsOfCards){
            let content: CardContent = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
        
    }
    
    
    var indexOfOneAndOnlyFaceUpCard: Int?{
        
        get{
            return cards.indices.filter {index in cards[index].isFaceUp}.only
        }
        // given index is equals to some index in the array make it face up
        set{
            cards.indices.forEach {
                cards[$0].isFaceUp = (newValue == $0)
               
            }
           
        }
        
    }
    
    mutating func chooseCard(_ card: Card){
        if let chosenIndex = cards.firstIndex(where: {$0.id == card.id}){
            if !cards[chosenIndex].isFaceUp && !cards[chosenIndex].isMatched{
                //takes first clicked item initilize the indexOfOneAndOnlyFaceUpCard
                if let potentialMatchIndex = indexOfOneAndOnlyFaceUpCard{
                    if cards[chosenIndex].content == cards[potentialMatchIndex].content{
                        cards[chosenIndex].isMatched = true
                        cards[potentialMatchIndex].isMatched = true
                    }
                }else{
                    
                    indexOfOneAndOnlyFaceUpCard = chosenIndex
                }
   
                cards[chosenIndex].isFaceUp = true
            }
        }
    }
    
    
    
    
    mutating func shuffle(){
        
        cards.shuffle()
        
    }
    
    struct Card: Equatable,Identifiable{
        
        var id = UUID()
        
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
        
    }
    
}


extension Array{
    var only: Element?{
        count == 1 ? first : nil
    }
}
