//
//  Models.swift
//  BabyTracker
//
//  Created by Calvin Chestnut on 5/2/20.
//  Copyright © 2020 Calvin Chestnut. All rights reserved.
//

import Foundation
import SwiftUI

typealias BreastSide = FeedEvent.Source.BreastSide

// MARK: - Baby Event Type
enum BabyEventType: String {
    case feed
    case diaper
    case nap
    case fuss
    case weight
    case tummyTime
    case custom
}
extension BabyEventType: Equatable, Codable, CaseIterable { }

// MARK: - Baby Event
protocol BabyEvent: Identifiable, Codable, Equatable {
    static var new: Self { get }

    var id: UUID { get set }
    var type: BabyEventType { get }
    var date: Date { get set }
}
extension BabyEvent {
    static var type: BabyEventType {
        return self.new.type
    }
}

// MARK: Measured Events
protocol MeasuredBabyEvent: BabyEvent {
    var measurement: Measurement<Unit>? { get set }
}

extension MeasuredBabyEvent {
    var measurement: Measurement<Unit>? {
        get {
            return nil
        }
        set {
            // Do nothing
        }
    }
}

// MARK: Display
extension BabyEventType {
    var emojiValue: String {
        switch self {
        case .feed:
            return "🤱🏻"
        case .diaper:
            return "🧷"
        case .nap:
            return "💤"
        case .fuss:
            return "😾"
        case .weight:
            return "⚖️"
        case .tummyTime:
            return "🚼"
        case .custom:
            return "👨‍👩‍👧"
        }
    }
    
    var colorValue: Color {
        switch self {
        case .feed:
            return .yellow
        case .diaper:
            return .blue
        case .nap:
            return .red
        case .fuss:
            return .purple
        case .weight:
            return .orange
        case .tummyTime:
            return .green
        case .custom:
            return .pink
        }
    }
}
