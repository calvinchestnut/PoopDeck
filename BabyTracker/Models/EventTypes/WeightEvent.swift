//
//  WeightEvent.swift
//  BabyTracker
//
//  Created by Calvin Chestnut on 6/11/20.
//  Copyright © 2020 Calvin Chestnut. All rights reserved.
//

import Foundation

struct WeightEvent: MeasuredBabyEvent {
    var type: BabyEventType = .weight
    static var new: WeightEvent {
        return WeightEvent(measurement: Measurement.init(value: 4.20, unit: .kilograms))
    }
    
    var id = UUID()
    var date: Date = Date()
    
    var measurement: Measurement<UnitMass>?
}
