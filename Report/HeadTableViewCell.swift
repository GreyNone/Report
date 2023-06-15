//
//  HeadTableViewCell.swift
//  Report
//
//  Created by Aliaksandr Vasilevich on 6/15/23.
//

import UIKit

class HeadTableViewCell: UITableViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    static let identifier = "HeadTableViewCell"
    static var nib: UINib {
        return UINib(nibName: "HeadTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
