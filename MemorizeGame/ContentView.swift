//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 10.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojis = ["🚗", "✈️", "🚆","🛳️","🚚","🚗", "✈️", "🚆","🛳️","🚚"]
    @State var cardColor = Color(.blue)
    
    var body: some View {
        LazyVGrid(columns:[GridItem(.adaptive(minimum: 70))]){
            
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index],color: $cardColor)
                    
                    .frame(width: 75,height: 90)
            }
            
        }
        .padding()
        
        Spacer()
        
        HStack{
            ThemeView(image: "car.fill",buttonName: "Vehicle", themeArray: $emojis, cardColor: $cardColor)
            ThemeView(image: "ant.fill",buttonName: "Animals", themeArray: $emojis, cardColor: $cardColor)
            ThemeView(image: "keyboard.fill",buttonName: "Sports", themeArray: $emojis, cardColor: $cardColor)
            
        }
        
    }
}

#Preview {
    NavigationStack{
        ContentView()
            .navigationTitle("Memorize!")
            .navigationBarTitleDisplayMode(.automatic)
                }
}
