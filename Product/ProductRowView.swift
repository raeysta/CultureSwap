//
//  ProductRowView.swift
//  scroll
//
//  Created by DPI Student 044 on 7/10/24.
//

import SwiftUI

struct ProductRowView: View {
    let product: Product
    
    var body: some View {
        VStack {
            ProductDetailsView(product: product)
        }
        .padding()
        .background(Color(.orange))
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .frame(width: 175)
        .padding(.horizontal, 8)
    }
}


