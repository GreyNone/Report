//
//  Data.swift
//  Report
//
//  Created by Aliaksandr Vasilevich on 6/15/23.
//

import Foundation

enum Reports: String, CaseIterable {
    case offensiveHead = "It's offensive and disrespectful"
    case excessivelyNegative = "Excessively Negative"
    case slurOrStereotype = "Slur or Stereotype"
    case trolling = "Trolling"
    case abuse = "Abuse"
    
    case safetyHead = "It violates community and individual safety"
    case privacyViolation = "Privacy violation"
    case safetyConcern = "Safety concern"
    
    case spamHead = "It's spam"
    case spam = "Professionally irrelecant or spam"
}
