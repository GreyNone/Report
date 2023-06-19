//
//  HeaderView.swift
//  Report
//
//  Created by Aliaksandr Vasilevich on 6/14/23.
//

import Foundation
import UIKit

class HeaderView: UIView {
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "HeaderView", bundle: nil).instantiate(withOwner: nil)[0] as! HeaderView
    }
}
