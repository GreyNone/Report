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
        guard let view = UINib(nibName: "HeaderView", bundle: nil).instantiate(withOwner: nil)[0] as? HeaderView else { return UIView() }
        return view
    }
}
