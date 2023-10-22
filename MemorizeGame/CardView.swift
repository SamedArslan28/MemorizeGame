//
//  CardView.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 10.10.2023.
//

import SwiftUI

struct CardView: View {
    
    
    typealias Card = MemoryGame<String>.Card
    // get cards arrays to shuffle them and show them
    let card: Card
    
    init(_ card: Card) {
        self.card = card
    }
    
   
    var body: some View {
        
        
        Pie(endAngle: .degrees(240))
            .foregroundStyle(.orange)
            .opacity(0.5)
            .overlay {
                
                
                Text(card.content)
                    .font(.system(size: 200))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.center)
                    .aspectRatio(1, contentMode: .fit)
                    .padding(7)
                    .rotationEffect(Angle.degrees(card.isMatched ? 360 : 0 ))
                    .animation(.spin(duration: 1), value: card.isMatched)

                
            }.padding(5)
            .cardify(isFaceUp: card.isFaceUp)
            .opacity(card.isFaceUp || !card.isMatched ? 1 : 0 )
            
        
        
        
        
        
        
    }
    
    
}




struct CardView_Previews: PreviewProvider{
    typealias Card = CardView.Card
    static var previews: some View{
        CardView(Card(content: "👻"))
    }
}

extension Animation{
    static func spin(duration: TimeInterval = 1) -> Animation{
        .linear(duration: duration).repeatForever(autoreverses: false)
    }

}



