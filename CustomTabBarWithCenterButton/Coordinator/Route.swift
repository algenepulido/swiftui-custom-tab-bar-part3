//
//  Route.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/29/24.
//

import Foundation

enum Route: Hashable {
    //define here the diffent screens you will be navigating to
    case ProductDetail(title: String, amount: Int)
    case AccountSettings
}
