
import SwiftUI

struct UserOfferingView: View {
    @State private var isAnyToggleChecked: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.orange
                    .opacity(0.4)
                    .ignoresSafeArea()
            VStack {
                
 //PFP
                
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
               

//This makes the "Begin Barter With Jon Doe" Button appear underneath the profile picture.

                if isAnyToggleChecked {
                                    NavigationLink(destination: ChatView()) {
                                        HStack {
                                            Text("Begin Barter With Jon Doe")
                                        }
                                    }
                                    .fontWeight(.heavy)
                                    .tracking(2)
                                    .padding(4.5)
                                    .background(Color.white)
                                    .foregroundColor(.orange)
                                    .cornerRadius(5)
                                    .offset(y:50)
                                }
                

//BIO
                ZStack {
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 400, height: 600)
                        .position(x: 200, y: 390)
                    
                        .overlay(VStack {
                            Text("Services Offered")
                                .multilineTextAlignment(.leading)
                                .bold()
                                .font(.largeTitle)
                                .position(x: 145, y: 75)
                        }
                        )
                }
 // SERVICES OFFERED
                    ScrollView(.vertical) {
                            VStack {
                                Rectangle()
                                    .fill(Color.secondary)
                                    .frame(width: 350, height: 100)
                                    .overlay(
                                        VStack {
                                            Text("(Maori) - (23 y/o) - (Male)")
                                                .tracking(3)
                                                .bold()
                                            Text("(IL), (Chicago)")
                                                .tracking(3)
                                            Text("3.5 Miles Away")
                                                .tracking(3)
                                        }
                                    )
                            
                            ServiceDescriptionView(
                                imageName: "maoriTat",
                                title: "Maori Tattoos",
                                description: "Description: Koru (Spiral) Tattoos. Can be simple or incorporated into larger designs. Placement: Commonly on the shoulder, upper arm, or calf.",
                                isAnyToggleChecked: $isAnyToggleChecked
                            )
                            
                            ServiceDescriptionView(
                                imageName: "Hei_Tiki",
                                title: "Hei Tiki Tats",
                                description: "Description: Represents ancestral figures, fertility, and protection. Placement: Often on the forearm, shoulder, or chest. Complexity: Typically medium complexity.",
                                isAnyToggleChecked: $isAnyToggleChecked
                            )
                            
                            ServiceDescriptionView(
                                imageName: "hennaTat",
                                title: "Henna Designs",
                                description: "Description: I will do small designs for some Mochi. The reddish-brown designs, which can last from one to three weeks, are often used to symbolize joy, beauty, and spiritual awakening.",
                                isAnyToggleChecked: $isAnyToggleChecked
                            ).mask {
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
                            }//MASK
                        }
                    }
                    .frame(width: 400.0, height: 400)
                    .offset(y:20)
                
                    
                }
                //zstack
                
                
            }
        }
        
    }
}

//SERVICE DESCRIPTION VIEW

struct ServiceDescriptionView: View {
    var imageName: String
    var title: String
    var description: String
    @Binding var isAnyToggleChecked: Bool

    @State private var isChecked: Bool = false

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.secondary)
                .frame(width: 350, height: 100)
                .overlay(
                    HStack {
                        Image(imageName)
                            .resizable()
                            .frame(width: 100, height: 100)
                        VStack(alignment: .leading) {
                            Text(title)
                                .bold()
                            Text(description)
                                .font(.system(size: 15))
                                .padding(.horizontal)
                        }
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
                        .frame(width: 230, height: 100)
                        Spacer()
                        ToggleButton(isChecked: $isChecked, isAnyToggleChecked: $isAnyToggleChecked)
                            .offset(x: -20)
                    }
                )
        }
    }
}

//This makes the toggle button work while also displaying the added message

struct ToggleButton: View {
    @Binding var isChecked: Bool
    @Binding var isAnyToggleChecked: Bool
    @State private var showingTooltip: Bool = false

    var body: some View {
        Button(action: {
            isChecked.toggle()
            showingTooltip = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                showingTooltip = false
            }
            isAnyToggleChecked = isChecked // Update the binding
        }) {
            Image(systemName: isChecked ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(isChecked ? .green : .blue)
                .overlay(
                    Group {
                        if showingTooltip {
                            Text("Added")
                                .frame(minWidth: 50, maxHeight: 50)
                                .font(.caption)
                                .background(Color.white)
                                .cornerRadius(5)
                                .offset(y: -40) // Position the tooltip above the button
                        }
                    },
                    alignment: .top
                )
        }
        .animation(.easeInOut, value: showingTooltip)
        
        
    }
}

#Preview {
    UserOfferingView()
}
