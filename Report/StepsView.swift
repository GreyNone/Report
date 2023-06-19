//
//  StepsView.swift
//  Report
//
//  Created by Aliaksandr Vasilevich on 6/19/23.
//

import Foundation
import UIKit

class StepsView: UIView {
    
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "StepsView", bundle: nil).instantiate(withOwner: nil)[0] as! UIView
    }
}
