//
//  BabyIconView.swift
//  BabyTracker
//
//  Created by Calvin Chestnut on 6/11/20.
//  Copyright © 2020 Calvin Chestnut. All rights reserved.
//

import SwiftUI

struct BabyIconView: View {
    @ObservedObject var baby: Baby
    var selected = false
    
    var onSelect: ((Baby) -> Void)?
    
    var activeColor: PreferredColor {
        return baby.themeColor ?? .random
    }
    
    var body: some View {
        Button(action: {
            self.onSelect?(self.baby)
        }) {
            ZStack {
                Circle()
                    .stroke(selected ? .secondary : activeColor.color, lineWidth: 2)
                
                ColoredCircle(color: activeColor)
                
                Text(baby.displayInitial)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
            }
            .withShadowPlease(selected, radius: 4)
        }
        .frame(width: 44, height: 44, alignment: .center)
    }
}

struct BabyIconView_Previews: PreviewProvider {
    static var baby: Baby {
        let baby = Baby()
        baby.name = "Sophia"
        baby.emoji = "👶"
        var components = DateComponents()
        components.month = 3
        components.day = 14
        components.year = 2020
        components.calendar = .current
        if let date = components.date {
            baby.birthday = date
        }
        baby.themeColor = PreferredColor.prebuiltSet.randomElement()!
        return baby
    }
    static var previews: some View {
        BabyIconView(baby: baby, selected: true)
    }
}
