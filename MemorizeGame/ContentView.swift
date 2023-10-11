//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 10.10.2023.
//

import SwiftUI

struct ContentView: View {
    
   @State var emojis = ["🐭","🐒","🥰","🤒","🤕","🐭","🐒","🥰","🤒","🐭","🐒","🥰"]
    
    var body: some View {
        LazyVGrid(columns:[GridItem(.adaptive(minimum: 70))]){
            
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index],color: .red)
                    
                    .frame(width: 75,height: 90)
            }
            
        }
        .padding()
        
        Spacer()
        
        HStack{
            ThemeView(image: "car.fill",buttonName: "Vehicle")
            ThemeView(image: "ant.fill",buttonName: "Halloween")
            ThemeView(image: "keyboard.fill",buttonName: "Keyboard")
            
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
