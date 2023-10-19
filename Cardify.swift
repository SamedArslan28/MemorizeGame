//
//  Cardify.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 16.10.2023.
//


import SwiftUI



struct Cardify: ViewModifier{
    var isFaceUp: Bool
    
    func body(content: Content) -> some View{
        
        ZStack{
            let base =  RoundedRectangle(cornerRadius: 10)
            
            base.strokeBorder(.orange, lineWidth: 2)
                .background(base.fill(.white))
                .overlay(content)
                .opacity(isFaceUp ? 1 : 0 )
            
            base
                .fill(.orange)
                .opacity(isFaceUp ? 0 : 1)
            
        }
        
        
        
    }
    
}


extension View{
    
    func cardify(isFaceUp: Bool) -> some View {
        
        modifier(Cardify(isFaceUp: isFaceUp))
    }
}
