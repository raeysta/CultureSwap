import SwiftUI

struct UserWantsView: View {
    
    
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
                        .offset(y:40)
                    
                    Text("Jon Doe")
                        .bold()
                        .font(.largeTitle)
                        .offset(y: 40)
                    
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 400, height: 600)
                            .position(x: 200, y: 390)
                        
                            .overlay(VStack {
                                Text("Services Wanted")
                                    .multilineTextAlignment(.leading)
                                    .bold()
                                    .font(.largeTitle)
                                    .position(x: 145, y: 75)
                                
                                Text("Barter Prefernece: (Food) (Clothes) (Knicknacks)")
                                    .font(.system(size:15))
                                    .offset(y:95)

                            }
                            )
                    }
                    
                    ScrollView (.vertical){
                        VStack {
                            Rectangle()
                                .fill(Color.secondary)
                                .frame(width:350, height:100)
                                .overlay(VStack {
                                    Text("(Maori) - (23 y/o) - (Male)")
                                        .tracking(3)
                                        .bold()
                                    Text("(IL), (Chicago)")
                                        .tracking(3)
                                    Text("3.5 Miles Away")
                                        .tracking(3)
                                })//overlay
                            
                            //USER BIO INPUT vvvv
                            
                            
                            // Service and Decrcirption 1
                            
                            ZStack {
                                Rectangle()
                                    .fill(Color.secondary)
                                    .frame(width:350, height: 100)
                                    .overlay(
                                        VStack{
                                            Text("Poncho")
                                                .bold()
                                            
                                            Text("Description: Looking for a poncho of any color, preferably from Peru")
                                                .mask {
                                                    VStack(spacing: 0) {
                                                        LinearGradient(
                                                            colors: [
                                                                Color.black.opacity(0),
                                                                Color.black.opacity(1.5),
                                                            ],
                                                            startPoint: .bottom,
                                                            endPoint: .top
                                                        )
                                                    }
                                                }
                                                .font(.system(size:15))
                                                .padding(.horizontal)
                                        }
                                            .frame(width:230, height:100)
                                            .offset(x:50))
                                //replace with images
                                Image("ponchoWant")
                                    .resizable()
                                    .frame(width:100, height: 100)
                                    .offset(x:-120)
                            } // Service and Decrcirption 1
                            
                            // Service and Decrcirption 2
                            
                            ZStack {
                                Rectangle()
                                    .fill(Color.secondary)
                                    .frame(width:350, height: 100)
                                    .overlay(
                                        VStack{
                                            Text("Borscht")
                                                .bold()
                                            
                                            Text("Description: Would love to exchange for a delicious Borscht meal.")
                                                .mask {
                                                    VStack(spacing: 0) {
                                                        LinearGradient(
                                                            colors: [
                                                                Color.black.opacity(0),
                                                                Color.black.opacity(1.5),
                                                            ],
                                                            startPoint: .bottom,
                                                            endPoint: .top
                                                        )
                                                    }
                                                }
                                                .font(.system(size:15))
                                                .padding(.horizontal)
                                        }
                                            .frame(width:230, height:100)
                                            .offset(x:50))
                                //replace with images
                                Image("foodWant")
                                    .resizable()
                                    .frame(width:100, height: 100)
                                    .offset(x:-120)
                                
                            } // Service and Decrcirption 2
                            
                            // Service and Decrcirption 3
                            
                            ZStack {
                                Rectangle()
                                    .fill(Color.secondary)
                                    .frame(width:350, height: 100)
                                    .overlay(
                                        
                                        VStack{
                                            Text("Sayadiyya")
                                                .bold()
                                            
                                            Text("Description: Preferred fresh! Allergic to olive oil. Will exchange over Henna")
                                                .font(.system(size:15))
                                        }
                                            .frame(width:230, height:100)
                                            .offset(x:50))
                                //replace with images
                                Image("foodTwoWant")
                                    .resizable()
                                    .frame(width:100, height: 100)
                                    .offset(x:-120)
                            }.mask {
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
                            
                            // Service and Decrcirption 3
                            
                            
                            
                            
                            
                            
                            
                        }// Vstack for bio text
                        
                        
                    }.frame(width: 400.0, height: 500.0).offset(y:100)
                    //scroll view
                    
                    
                    
                }// ZStack for BIO text
            }//Vstack for PROFILE IN GENERAL
            
            
            
            
        }// body view
    }// struct view
}
 
// NAVIGATION LINK THINGY-MA-JIGGY
#Preview {
UserWantsView()
}
