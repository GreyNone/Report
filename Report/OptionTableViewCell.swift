//
//  OptionTableViewCell.swift
//  Report
//
//  Created by Aliaksandr Vasilevich on 6/15/23.
//

import UIKit

class OptionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    static let identifier = "OptionTableViewCell"
    static var nib: UINib {
        return UINib(nibName: "OptionTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
