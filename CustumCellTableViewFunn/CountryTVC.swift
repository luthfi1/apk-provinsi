//
//  CountryTVC.swift
//  CustumCellTableViewFunn
//
//  Created by muhammad luthfi farizqi on 12/11/20.
//

import UIKit

class CountryTVC: UITableViewCell {

    @IBOutlet weak var countryView: UIView!
    @IBOutlet weak var countryImgView: UIImageView!
    @IBOutlet weak var countryLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
