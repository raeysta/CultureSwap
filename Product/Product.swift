//
//  Product.swift
//  scroll
//
//  Created by DPI Student 044 on 7/10/24.
//

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let userName: String
    let image: Image
    let weight: String
}

let products = [
    Product(name: "Tattoo Artist", userName: "Jon Doe", image: Image(.tattoo), weight: "Arts & Crafts"),
    Product(name: "Crocheter", userName: "Adele Weaver" , image: Image(.crochet), weight: "Arts & Crafts"),
    Product(name: "Braider", userName: "Sasha Banks " , image: Image(.nails), weight: "Beauty")
    ]

#Preview {
    ProductDetailsView(product: products [0])
}
