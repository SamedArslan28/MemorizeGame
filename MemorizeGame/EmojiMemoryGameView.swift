//
//  EmojiMemoryGameView.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 10.10.2023.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    
    var body: some View {
        let aspectRatio: CGFloat = 2/3
        
        AspectVGrid(viewModel.cards, aspectRatio: aspectRatio){ card in
            
            CardView(card)
                
                .padding(4)
                .animation(.default, value: viewModel.cards)
                .onTapGesture {
                    viewModel.choose(card)
                    
                }
            
        }
        .padding()
        
        Spacer()
        
        
        Button("Shuffle",action: viewModel.shuffle)
        
    }
}







#Preview {
    
    EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    
}



