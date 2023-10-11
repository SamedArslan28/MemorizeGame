//
//  ThemeView.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 10.10.2023.
//

import SwiftUI

struct ThemeView: View {
    var image : String
    var buttonName: String
    
    @Binding var themeArray: [String]
    @Binding var cardColor: Color
    
    var body: some View {
        VStack{
            Button(){
                if buttonName == "Vehicle"{
                    loadTheme(cardColor: .blue, emojis: ["🚗", "✈️", "🚆","🛳️","🚚","🚗", "✈️", "🚆","🛳️","🚚"])
                    
                }else if buttonName == "Animals"  {
                    loadTheme(cardColor: .orange, emojis: ["🐍", "🕷️", "🦆","🐰","🐢","🐍", "🕷️", "🦆","🐰","🐢"])
                    
                }else{
                    loadTheme(cardColor: .green, emojis: ["⚽️", "🏀", "🏈","🎾","🏐","⚽️", "🏀", "🏈","🎾","🏐"])
                    
                }
                
            }label: {
                Image(systemName: image)
            }
            Text(buttonName)
                .foregroundStyle(.blue)
        }
        .padding()
        
    }
}

#Preview {
    ThemeView(image: "plus",buttonName: "Trasnportation", themeArray: .constant(["a"]), cardColor: .constant(.orange))
}

extension ThemeView{
    
    func loadTheme(cardColor color: Color, emojis: [String] ) {
        withAnimation {
            themeArray = emojis.shuffled()
            cardColor = color
        }
        
    }
    
}
