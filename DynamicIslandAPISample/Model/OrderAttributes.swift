//
//  OrderAttributes.swift
//  DynamicIslandAPISample
//
//  Created by 白数叡司 on 2022/09/30.
//

import SwiftUI
import ActivityKit

struct OrderAttributes: ActivityAttributes {
    struct ContentState: Codable, Hashable {
        // MARK: Live Activities will update its view when content state is updated
        var status: Status = .received
    }
    
    // MARK: Other Properties
    var orderNumber: Int
    var weatherType: String
}

// MARK: Order Status
// For this Demo Project
// Change For Your Project Usage
enum Status: String, CaseIterable, Codable, Equatable{
    // MARK: String Values are SFSymbol Images
    case received = "shippingbox.fill"
    case progress = "person.bust"
    case ready = "takeoutbag.and.cup.and.straw.fill"
}
