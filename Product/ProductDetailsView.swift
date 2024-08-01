//
//  ProductDetailsView.swift
//  scroll
//
//  Created by DPI Student 044 on 7/10/24.
//

import SwiftUI

struct ProductDetailsView: View {
    let product: Product
    @State var showingBottomSheet = false
    
    var body: some View {
        VStack(alignment: .leading) {
            product.image
                .resizable()
                .aspectRatio(CGSize(width: 1, height: 1), contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 18))
            
            Text(product.name)
                .font(.headline)
                .lineLimit(2, reservesSpace: true)
            
            Text(product.userName)
            
            Text(product.weight)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.bottom)
            
            Button("View More") {
                showingBottomSheet.toggle()
                
            }
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .tint(.yellow)

        }
        .padding()
        .sheet(isPresented: $showingBottomSheet) {
            BottomSheetView()
                .presentationDetents([.large])
        }
    }
}
