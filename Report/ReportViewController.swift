//
//  ReportViewController.swift
//  Report
//
//  Created by Aliaksandr Vasilevich on 6/15/23.
//

import UIKit

class ReportViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var reportNameLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    var reportDescription: String?
    var reportName: String?
    var steps: [StepsView]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.descriptionLabel.text = reportDescription
        self.reportNameLabel.text = reportName
        
        if let steps = steps {
            for step in steps {
                stackView.addSubview(step)
            }
        }
    }
}
