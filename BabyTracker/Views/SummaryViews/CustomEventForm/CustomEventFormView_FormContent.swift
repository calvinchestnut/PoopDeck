//
//  CustomEventFormView_FormContent.swift
//  BabyTracker
//
//  Created by Calvin Chestnut on 6/22/20.
//  Copyright © 2020 Calvin Chestnut. All rights reserved.
//

import Foundation

extension CustomEventFormView {
    struct FormContent {
        var date: ObservableDate = .init()
        
        var id: UUID?
        var title: String = ""
        var info: String = ""
    }
}
