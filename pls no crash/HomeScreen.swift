//
//  HomeScreen.swift
//  pls no crash
//
//  Created by DPI Student 044 on 7/23/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.orange
                    .opacity(0.4)
                    .ignoresSafeArea()
                ScrollView {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(products) { product in
                                ProductRowView(product: product)
                            }
                        }
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(products) { product in
                                ProductRowView(product: product)
                            }
                        }
                    }
                    .navigationTitle("Recommended")
                    .padding()
                }
            }
        }
    }
}

#Preview {
    HomeScreen()
}
