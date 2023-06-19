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
            return "Content that interrupts a productive or solutions-oriented conversations by being excessively negative rather than civil and constructive (i.e criticising a company or individual in a way that is heightened and without context)"
        }
    }
    
    var steps: [StepsView] {
        switch self {
        case .excessivelyNegative:
            let firstStepView = StepsView.instanceFromNib() as! StepsView
            firstStepView.headLabel.text = "Drawing a line between honesty and negativity"
            firstStepView.descriptionLabel.text = "Kindly let the author know when their negativity has crossed a line into disrupting a productive conversation or is derailing the community"
            
            let secondStepView = StepsView.instanceFromNib() as! StepsView
            secondStepView.headLabel.text = "Steer the conversation back"
            secondStepView.descriptionLabel.text = "Reset the conversation back to the original subject and purpose"
            
            let steps = Array([firstStepView,secondStepView])
            return steps
        case .spam:
            let firstStepView = StepsView.instanceFromNib() as! StepsView
            firstStepView.headLabel.text = "Suggest a more relevant Bowl"
            firstStepView.descriptionLabel.text = "Fishbowl has many communities, including social topics and referrals.If you know a Bowl that is better suited for this conversation, suggest it kindly to the author"
            
            let steps = Array([firstStepView])
            return steps
        default:
            let firstStepView = StepsView.instanceFromNib() as! StepsView
            firstStepView.headLabel.text = "Drawing a line between honesty and negativity"
            firstStepView.descriptionLabel.text = "Kindly let the author know when their negativity has crossed a line into disrupting a productive conversation or is derailing the community"
            
            let secondStepView = StepsView.instanceFromNib() as! StepsView
            secondStepView.headLabel.text = "Steer the conversation back"
            secondStepView.descriptionLabel.text = "Reset the conversation back to the original subject and purpose"
            
            let steps = Array([firstStepView,secondStepView])
            return steps
        }
    }
}
