//
//  ContentView.swift
//  scroll
//
//  Created by DPI Student 044 on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ReceiptScreen()
                .tabItem {
                    Label("Trades", systemImage: "square.stack")
                }
        }

    }
}

#Preview {
    ContentView()
}


