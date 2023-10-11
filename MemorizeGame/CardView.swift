//
//  CardView.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 10.10.2023.
//

import SwiftUI

struct CardView: View {
    // get cards arrays to shuffle them and show them
    let content :String
    @State private var isFaceUp = true
    @State  var color : Color
    
    var body: some View {
        
        ZStack{
            let base =  RoundedRectangle(cornerRadius: 10)
            Group{
                base
                    .fill(.white)
                    .strokeBorder(.orange, lineWidth: 4)
                Text(content)
                    .font(.largeTitle)
                
            }
            .opacity(isFaceUp ? 0 : 1 )
            
            base
                .fill(color)
                .opacity(isFaceUp ? 1 : 0)
            
        }
        
        
        
        .onTapGesture { withAnimation{ isFaceUp
            .toggle()}
            
        }
        
        
    }
}

#Preview {
    CardView(content: "🦁", color: .orange)
}
