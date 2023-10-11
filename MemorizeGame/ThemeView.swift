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
    var body: some View {
        VStack{
            Button(){
                
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
    ThemeView(image: "plus",buttonName: "Trasnportation")
}
