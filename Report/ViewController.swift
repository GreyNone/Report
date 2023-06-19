//
//  ViewController.swift
//  Report
//
//  Created by Aliaksandr Vasilevich on 6/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var warningView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Report"
       
        tableView.register(HeadTableViewCell.nib, forCellReuseIdentifier: HeadTableViewCell.identifier)
        tableView.register(OptionTableViewCell.nib, forCellReuseIdentifier: OptionTableViewCell.identifier)
    }

    @IBAction func didClickOnCloseButton(_ sender: Any) {
        warningView.removeFromSuperview()
        tableViewTopConstraint.constant = 0
        tableView.updateConstraints()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return HeaderView.instanceFromNib()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Reports.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 || indexPath.row == 5 || indexPath.row == 8 {
            let cell = tableView.dequeueReusableCell(withIdentifier: HeadTableViewCell.identifier) as! HeadTableViewCell
            cell.descriptionLabel.text = Reports.allCases[indexPath.row].name
            cell.isUserInteractionEnabled = false
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: OptionTableViewCell.identifier) as! OptionTableViewCell
            cell.descriptionLabel.text = Reports.allCases[indexPath.row].name
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let reportStoryboard = UIStoryboard(name: "ReportStoryboard", bundle: nil)
        let reportViewController = reportStoryboard.instantiateViewController(withIdentifier: "ReportViewController") as! ReportViewController
        reportViewController.reportDescription = Reports.allCases[indexPath.row].description
        reportViewController.reportName = Reports.allCases[indexPath.row].name
        
        self.navigationController?.pushViewController(reportViewController, animated: true)
    }
}
