//
//  ReceiptScreen.swift
//  pls no crash
//
//  Created by DPI Student 044 on 7/23/24.
//

import SwiftUI

struct ReceiptScreen: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.orange
                    .opacity(0.4)
                    .ignoresSafeArea()
                
                ScrollView {
                    LazyVStack {
                        ForEach(0..<2) { _ in
                            Color.orange
                                .opacity(0.6)
                            .frame(height: 120)}
                        VStack{
                            Text("Exchange with: Jon Doe")
                                .bold()
                            
                            Text("Received: Henna Design")
                                .font(.system(size:15))
                            Text("Exchanged: Food")
                                .font(.system(size:15))
                            Text("Traded on 10/16/24")
                                .font(.system(size:10))
                        }
                        .frame(width:230, height:100)
                        .offset(x:50)
                        .offset(y: -245)
                        //replace with images
                        Image("Tattoo")
                            .resizable()
                            .frame(width:100, height: 100)
                            .offset(x:-120)
                            .offset(y: -355)
                        
                        
                        VStack{
                            Text("Exchange with: Jon Doe")
                                .bold()
                            
                            Text("Received: Maori Tattoos")
                                .font(.system(size:15))
                            Text("Exchanged: Food")
                                .font(.system(size:15))
                            Text("Traded on 10/16/24")
                                .font(.system(size:10))
                        }
                        .frame(width:230, height:100)
                        .offset(x:50)
                        .offset(y: -335)
                        //replace with images
                        Image("Tattoo")
                            .resizable()
                            .frame(width:100, height: 100)
                            .offset(x:-120)
                            .offset(y: -443)
                    }
                    .navigationTitle("Trade History")
                }
            }
        }
    }
}

#Preview {
    ReceiptScreen()
}
