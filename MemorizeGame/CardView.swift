//
//  CardView.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 10.10.2023.
//

import SwiftUI

struct CardView: View {
    // get cards arrays to shuffle them and show them
    let card: MemoryGame<String>.Card
    
    init(_ card: MemoryGame<String>.Card) {
        self.card = card
    }
    var body: some View {
        
        
        ZStack{
            let base =  RoundedRectangle(cornerRadius: 10)
            Group{
                base
                    .fill(.white)
                    .strokeBorder(.orange, lineWidth: 4)
                Text(card.content)
                    .font(.system(size: 200))
                    .minimumScaleFactor(0.01)
                    .aspectRatio(1, contentMode: .fit)
                
            }
            .opacity(card.isFaceUp ? 1 : 0 )
            
            base
                .fill(.orange)
                .opacity(card.isFaceUp ? 0 : 1)
            
        }
        
        
        
        
        
        
    }
}

