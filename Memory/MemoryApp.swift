//
//  MemoryApp.swift
//  Memory
//
//  Created by Gulnaz on 20.09.2022.
//

import SwiftUI

@main
struct MemoryApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
