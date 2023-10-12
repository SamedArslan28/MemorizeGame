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
        LazyVGrid(columns:[GridItem(.adaptive(minimum: 85), spacing:0)],spacing: 0){
            
            ForEach(viewModel.cards){ card in
                CardView(card)
                    
                    .aspectRatio(2/3, contentMode: .fit)
                    .padding(4)
                    .animation(.default, value: viewModel.cards)
                    .onTapGesture {
                        viewModel.choose(card)
                    }
                
            }
            
        }
        
        .padding()
        
        Spacer()
        
        
//        HStack{
//            ThemeView(image: "car.fill",buttonName: "Vehicle", themeArray: $emojis, cardColor: $cardColor)
//            ThemeView(image: "ant.fill",buttonName: "Animals", themeArray: $emojis, cardColor: $cardColor)
//            ThemeView(image: "keyboard.fill",buttonName: "Sports", themeArray: $emojis, cardColor: $cardColor)
//            
//        }
//        
        
        Button("Shuffle",action: viewModel.shuffle)
    }
}

#Preview {
  
    EmojiMemoryGameView(viewModel: EmojiMemoryGame())
           
}