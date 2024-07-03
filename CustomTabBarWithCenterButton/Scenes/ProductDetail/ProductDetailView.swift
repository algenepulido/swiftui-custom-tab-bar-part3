//
//  ProductDetailView.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/29/24.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.tabVisibility) private var tabVisibility: Binding<Bool>
    
    @State private var title: String
    @State private var amount: Int
    
    init(title: String, amount: Int) {
        _title = State(initialValue: title)
        _amount = State(initialValue: amount)
    }
    
    var body: some View {
        VStack {
            Text("Product Detail")
            Text("Title: \(title)")
            Text("Amount: \(amount)")
        }
        .onAppear() {
            tabVisibility.wrappedValue = false
        }
        .onDisappear() {
            tabVisibility.wrappedValue = true
        }
    }
    
}

#Preview {
    ProductDetailView(title: "Chair", amount: 1)
}
