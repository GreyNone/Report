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
    var reportDescription: String?
    var reportName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.descriptionLabel.text = reportDescription
        self.reportNameLabel.text = reportName
    }
}
