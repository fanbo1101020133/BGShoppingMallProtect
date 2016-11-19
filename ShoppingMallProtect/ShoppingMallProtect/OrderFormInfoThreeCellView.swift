//
//  OrderFormInfoThreeCellView.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/16.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class OrderFormInfoThreeCellView: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var localNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
