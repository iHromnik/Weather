//
//  CellTableViewCell.swift
//  Weather
//
//  Created by HappyRoman on 14/04/2022.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    @IBOutlet weak var cityLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
