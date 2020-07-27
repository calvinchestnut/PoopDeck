//
//  DateStepperView_DateModification.swift
//  BabyTracker
//
//  Created by Calvin Chestnut on 6/22/20.
//  Copyright © 2020 Calvin Chestnut. All rights reserved.
//

import SwiftUI

/// Functions to help managing the target date
extension DateStepperView {
    /// Apply current adjustments
    func updateTargetDate() {
        targetDate = .init(Date.apply(adjustmentComponents, to: Date()))
    }
    
    /// Check to see if any active component is non 0
    func dateIsModified() -> Bool {
        let dayAdjustment = adjustmentComponents.day ?? 0
        let monAdjustment = adjustmentComponents.month ?? 0
        let highestDiff = max(abs(dayAdjustment), abs(monAdjustment))
        return highestDiff != 0
    }
}
