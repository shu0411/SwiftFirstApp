//
//  Item.swift
//  FirstApp
//
//  Created by Apple on 2024/04/06.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
