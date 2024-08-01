//
//  BottomSheetView.swift
//  scroll
//
//  Created by DPI Student 044 on 7/15/24.
//

import SwiftUI

struct BottomSheetView: View {
    @State var showingBottomSheet = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color.orange
                    .opacity(0.4)
                    .ignoresSafeArea()
                VStack {
                    Image("Jon_Doe")
                        .resizable() // Make the image resizable
                        .aspectRatio(contentMode: .fill) // Fill the circle frame
                        .frame(width: 100, height: 100) // Set the frame size
                        .clipShape(Circle()) // Clip the image to a circle shape
                        .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Optional: Add a white border
                        .shadow(radius: 10) // Optional: Add a shadow for better visual effect
                        .offset(y:-20)
                    
                    Text("Jon Doe")
                        .bold()
                        .font(.largeTitle)
                        .offset(y: -10)
                    
                    Text("Previous Exchanges")
                        .bold()
                        .offset(y: 20)
                        .offset(x: -100)
                        .offset(y: -20)

                    
                    //service bottom portion
                    ZStack {
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width:350, height: 100)
                            .offset(y: -5)
                            .overlay(
                                VStack{
                                    Text("Henna Tattoo")
                                        .bold()
                                        .offset(y:-5)
                                    Text("Exchange with: Sasha Banks")
                                        .font(.system(size:15))
                                        .offset(y:-5)

                                    Text("Traded on 10/16/24")
                                        .font(.system(size:10))
                                        .offset(y:-5)
                                    
                                }
                                    .frame(width:230, height:100)
                                    .offset(x:50))
                        //replace with images
                        Image("hennaTat")
                            .resizable()
                            .frame(width:90, height: 90)
                            .offset(x:-120)
                            .offset(y:-5)

                    } // Service and Decrcirption
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width:350, height: 100)
                            .offset(y: -5)
                            .overlay(
                                VStack{
                                    Text("Maori Tattoo")
                                        .bold()
                                        .offset(y:-5)
                                    Text("Exchange with: Adele Weaver")
                                        .font(.system(size:15))
                                        .offset(y:-5)
                                    Text("Traded on 10/16/24")
                                        .font(.system(size:10))
                                        .offset(y:-5)
                                    
                                }
                                    .frame(width:230, height:100)
                                    .offset(x:50))
                        //replace with images
                        Image("maoriTat")
                            .resizable()
                            .frame(width:90, height: 90)
                            .offset(x:-120)
                            .offset(y:-5)

                    } // Service and Decrcirption
                    
                    
                    //buttons
                    HStack (spacing: 40) {
                        
                        Button (action: {
                            //nada
                        }){
                            NavigationLink("Wants", destination: UserWantsView())
                        }
                        .fontWeight(.heavy)
                        
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .offset(y: -5)
                        .fullScreenCover(isPresented: $showingBottomSheet) {
                            UserWantsView()
                                .presentationDetents([.large])
                        }
                        HStack (spacing: 40) {
                            
                            Button (action: {
                                //nada
                            }){
                                NavigationLink("Offering", destination: UserOfferingView())
                            }
                            .fontWeight(.heavy)
                            
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .offset(y: -5)
                            .fullScreenCover(isPresented: $showingBottomSheet) {
                                UserOfferingView()
                                    .presentationDetents([.large])
                            }
                        }//hstack
                    }
                }
                .padding(.all)//VStack
            } //ZStack
        }//nav stack
    }//body
}//bottomsheetview

#Preview {
    BottomSheetView()
}
