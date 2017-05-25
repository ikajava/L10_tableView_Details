//
//  File.swift
//  10 Lesson, Part 01
//
//  Created by Ika Javakhishvili on 05/1/17.
//  Copyright © 2017 Ika Javakhishvili. All rights reserved.
//

import Foundation


class Trip {
    
    var name: String
    var days: Int
    var pricePerDay: Double
    
    func calculatePrice() -> Double {
        return Double(days) * pricePerDay
    }
    
    
    init(name: String, days: Int, pricePerDay: Double) {
        self.name = name
        self.days = days
        self.pricePerDay = pricePerDay

    }
    
}
