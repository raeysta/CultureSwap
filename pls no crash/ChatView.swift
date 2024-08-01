//
//  chat1.swift
//  SLAYYY
//
//  Created by DPI Student 034 on 7/15/24.
//

import SwiftUI

struct ChatView: View {
    
    @State private var text = ""
    @State private var showingPopover: Bool = false

    
    var body: some View {
        ZStack {
            Color.orange
                .opacity(0.4)
                .ignoresSafeArea()
            VStack {
                Text("Messages with Jon Doe")
                    .frame(width:400, height:100)
                    .background(Color.orange)
                    .kerning(3)
                    .bold()
                                
                VStack {
                    HStack{
                        HStack {
                            Text("I see that you do Henna and Moari Tattoos, may I offer you some homecooked Ćevapi")
                                .padding(.all)
                        }
                        .frame( width: 260, height: 100,  alignment: .leading)
                        .background(.orange)
                        .cornerRadius(20.0)
                        .shadow(radius: 5)
                        
                        
                        Image("random_Lady")
                            .resizable() // Make the image resizable
                            .aspectRatio(contentMode: .fill) // Fill the circle frame
                            .frame(width: 70, height: 70) // Set the frame size
                            .clipShape(Circle()) // Clip the image to a circle shape
                            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Optional: Add a white border
                            .shadow(radius: 10) // Optional: Add a shadow for better visual effect
                    }
                    .frame(maxWidth: 360, alignment: .trailing)
                    .padding()
                    //HSTACK
                    
                    HStack{
                        Image("Jon_Doe")
                            .resizable() // Make the image resizable
                            .aspectRatio(contentMode: .fill) // Fill the circle frame
                            .frame(width: 70, height: 70) // Set the frame size
                            .clipShape(Circle()) // Clip the image to a circle shape
                            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Optional: Add a white border
                            .shadow(radius: 10) // Optional: Add a shadow for better visual effect
                        
                        HStack {
                            Text("ooo, I have never tried bosnian food. I would love to try that.")
                                .padding(.all)
                        }
                        .frame(maxWidth: 260, alignment: .leading)
                        .frame(width: 260.0, height: 100.0)
                        .background(.gray)
                        .cornerRadius(20.0)
                        .shadow(radius: 5)
                        
                    }
                    .frame(maxWidth: 360, alignment: .leading)
                    .padding()
                    //HSTACK
                    
                    HStack{
                        HStack {
                            Text("Cool, I am available on wednesday and we can exchange things")
                                .padding(.all)
                        }
                        .frame( width: 260, height: 100,  alignment: .leading)             .background(.orange)
                        .cornerRadius(20.0)
                        .shadow(radius: 5)
                        
                        
                        Image("random_Lady")
                            .resizable() // Make the image resizable
                            .aspectRatio(contentMode: .fill) // Fill the circle frame
                            .frame(width: 70, height: 70) // Set the frame size
                            .clipShape(Circle()) // Clip the image to a circle shape
                            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Optional: Add a white border
                            .shadow(radius: 10) // Optional: Add a shadow for better visual effect
                    }
                    .frame(maxWidth: 360, alignment: .trailing)
                    .padding()
                    //HSTACK
                    
                    HStack{
                        Image("Jon_Doe")
                            .resizable() // Make the image resizable
                            .aspectRatio(contentMode: .fill) // Fill the circle frame
                            .frame(width: 70, height: 70) // Set the frame size
                            .clipShape(Circle()) // Clip the image to a circle shape
                            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Optional: Add a white border
                            .shadow(radius: 10) // Optional: Add a shadow for better visual effect
                        
                        HStack {
                            Text("Bet :)")
                                .padding(.all)
                        }
                        .frame(maxWidth: 260, alignment: .leading)
                        .background(.gray) //I made my own color asset, either make new ones/ see if it works/ or use random colors
                        .cornerRadius(20.0)
                        .shadow(radius: 5)
                        
                    }
                    .frame(maxWidth: 360, alignment: .leading)
                    .padding()
                    //HSTACK
                    
                    HStack { // TEXT INPUT THAT DOESNT DO ANYTHING
                        TextField("Type a message...", text: $text)
                            .shadow(radius: 10)
                            .frame(width:300)
                            .textFieldStyle(.roundedBorder)
                        Button(action: {
                        }) {
                            Image(systemName: "paperplane.fill")
                                .padding(.horizontal)
                                .frame(width: 30.0, height: 30.0)
                                .shadow(radius: 5)
                                .foregroundColor(Color.orange)
                        } // TEXT INPUT THAT DOESNT DO ANYTHING
                        
                    }.padding()
                    
                }//Text Messages
                    
             
                    Button(action:  {
                            showingPopover = true
                        }) {
                            Text("Barter")
                                .bold()
                                .padding()
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        .popover(isPresented: $showingPopover) {
                            PopoverView()
                        }
                    .padding(.top, 20)

                
                
            }//VSTACK for eveything
    }//body
    
}//struct

struct PopoverView: View {
    
    
    @State private var selectedOption = "Option 1"
    let options = ["Select Barter Option","Food", "Clothes", "Knicknacks"]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                Text("BARTER RECEIPT")
                    .font(.largeTitle)
                
                Text("Bartered on 10/16/24")
                    .multilineTextAlignment(.leading)
                    .padding(1)
                    .font(.headline)
                
                Text("Bartered With Jon Doe")
                    .multilineTextAlignment(.leading)
                    .padding(1)
                    .font(.headline)
                
            }
            .position(x:150, y:90)
            
            VStack(alignment: .leading) {
                HStack{
                    Text("You Will Receive:")
                        .padding(.vertical, 2)
                        .font(.title2)
                    
                    Spacer()
                    
                    ScrollView(.vertical){
                        
                        // Service and Decrcirption 1
                        VStack {
                            Rectangle()
                                .fill(Color.secondary)
                                .frame(width:170, height: 100)
                                .overlay(
                                    HStack{
                                        
                                        Image("hennaTat")
                                            .resizable()
                                            .frame(width:80, height: 80)
                                        
                                        Text("Henna Designs")
                                            .font(.subheadline)
                                            .multilineTextAlignment(.center)
                                        
                                        
                                    })
                        }
                        .shadow(radius: 20)
                        // Service and Decrcirption
                        
                        
                        VStack {
                            Rectangle()
                                .fill(Color.secondary)
                                .frame(width:170, height: 100)
                                .overlay(
                                    HStack{
                                        Image("maoriTat")
                                            .resizable()
                                            .frame(width:80, height: 80)
                                        Text("Maori Tattoos")
                                            .font(.subheadline)
                                            .multilineTextAlignment(.center)
                                        
                                    }).mask {
                                        VStack(spacing: 0) {
                                            LinearGradient(
                                                colors: [
                                                    Color.black.opacity(0),
                                                    Color.black.opacity(1),
                                                ],
                                                startPoint: .bottom,
                                                endPoint: .top
                                            )
                                        }
                                    }
                        }
                        .shadow(radius: 20)
                        // Service and Decrcirption
                        
                    }
                    .offset(y:70)
                    //SCROLLVIEW
                    
                    
                }
                .offset(y: -55)
                //HSTACK
                
                
                HStack {
                    Text("You Are Sharing: ")
                        .padding(.vertical, 2)
                        .font(.title2)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color("light_pink"))
                            .frame(width: 170.0, height: 40.0)
                        
                        Picker("Select an option", selection: $selectedOption) {
                            ForEach(options, id: \.self) { option in
                                Text(option).tag(option)
                                    .font(.subheadline)
                            }
                        }
                        .pickerStyle(.wheel)
                    }//ZSTACK
                }
                .offset(y:30)
                
                
                //Hstack
            }
            .position(x: 180, y: -10)
            .padding(.all, 20)
            
            Button (action: {
                //nada
            }){
                Text("Finish")
            }
            .fontWeight(.heavy)
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(15)
            .offset(x: 100)
            .offset(y: -100)
        }
        }
    }
}


#Preview {
    ChatView()
}
