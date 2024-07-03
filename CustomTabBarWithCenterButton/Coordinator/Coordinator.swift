//
//  Coordinator.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/29/24.
//

import SwiftUI

final class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    
    func push(_ route: Route) {
        path.append(route)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(route: Route) -> some View {
        switch route {
        case .ProductDetail(let title, let amount):
            ProductDetailView(title: title, amount: amount)
        case .AccountSettings:
            AccountSettingsView()
        }
    }
}
