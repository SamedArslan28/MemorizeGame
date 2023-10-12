//
//  MemorizeGameApp.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 10.10.2023.
//

import SwiftUI

@main
struct MemorizeGameApp: App {
    @StateObject var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
