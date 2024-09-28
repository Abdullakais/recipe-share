//
//  Item.swift
//  Recipe-Share
//
//  Created by COCOBSCCOMP231P-033 on 2024-09-28.
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
