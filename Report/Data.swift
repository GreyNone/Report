//
//  Data.swift
//  Report
//
//  Created by Aliaksandr Vasilevich on 6/15/23.
//

import Foundation

//enum Reports: String, CaseIterable {
//    case offensiveHead = "It's offensive and disrespectful"
//    case excessivelyNegative = "Excessively Negative"
//    case slurOrStereotype = "Slur or Stereotype"
//    case trolling = "Trolling"
//    case abuse = "Abuse"
//
//    case safetyHead = "It violates community and individual safety"
//    case privacyViolation = "Privacy violation"
//    case safetyConcern = "Safety concern"
//
//    case spamHead = "It's spam"
//    case spam = "Professionally irrelecant or spam"
//}

enum Reports: String, CaseIterable {
    case offensiveHead
    case excessivelyNegative
    case slurOrStereotype
    case trolling
    case abuse

    case safetyHead
    case privacyViolation
    case safetyConcern

    case spamHead
    case spam
    
    var name: String {
        switch self {
        case .offensiveHead:
            return "It's offensive and disrespectful"
        case .excessivelyNegative:
            return "Excessively Negative"
        case .slurOrStereotype:
            return "Slur or Stereotype"
        case .trolling:
            return "Trolling"
        case .abuse:
            return "Abuse"
        case .safetyHead:
            return "It violates community and individual safety"
        case .privacyViolation:
            return "Privacy violation"
        case .safetyConcern:
            return "Safety concern"
        case .spamHead:
            return "It's spam"
        case .spam:
            return "Professionally irrelecant or spam"
    }
}
    var description: String {
        switch self {
        case .excessivelyNegative:
            return "Content that interrupts a productive or solutions-oriented conversations by being excessively negative rather than civil and constructive (i.e criticising a company or individual in a way that is heightened and without context)"
        case .spam:
            return "Content that is off-topic, repetitive or unsolicited to the bowl's community and conversations (i.e product or job referral links. irrelevant product or service recommendations, excessively personal content)"
        default:
            return "Placehodler"
        }
    }

}
