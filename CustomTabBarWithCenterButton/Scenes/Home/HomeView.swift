//
//  HomeView.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/26/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3)
            VStack {
                Text("Home View")
                Button {
                    coordinator.push(.ProductDetail(title: "Monitor", amount: 101))
                } label: {
                    Text("Go To Product Detail")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
