//
//  EmojiMemoryGameView.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 10.10.2023.
//

import SwiftUI

struct EmojiMemoryGameView: View {

    typealias Card = MemoryGame<String>.Card

    @ObservedObject var viewModel: EmojiMemoryGame
    private let aspectRatio: CGFloat = 2/3

    var body: some View {

        VStack{
            card
            HStack{
                score
                Spacer()
                shuffleButton

            }
        }.padding()

    }

    private var score: some View{
        Text("Score: \(viewModel.score)")
            .animation(nil)
    }


    private var shuffleButton: some View{
        Button("Shuffle"){
            withAnimation {
                viewModel.shuffle()
            }
        }

    }
    private var card: some View{
        AspectVGrid(viewModel.cards, aspectRatio: aspectRatio){ card in
            CardView(card)
                .overlay(FlyingNumber(number: scoreChange(causedBy: card)))
                .padding(4)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1)){
                        viewModel.choose(card)
                    }
                }

        }

    }
    private func scoreChange(causedBy card: Card) -> Int{
        return 0 

    }

}







#Preview {

    EmojiMemoryGameView(viewModel: EmojiMemoryGame())

}



