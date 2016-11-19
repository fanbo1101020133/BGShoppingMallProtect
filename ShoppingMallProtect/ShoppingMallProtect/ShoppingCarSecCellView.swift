//
//  ShoppingCarSecCellView.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/16.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class ShoppingCarSecCellView: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var reduceBrn: UIButton!
    @IBOutlet weak var increaseBtn: UIButton!
    @IBOutlet weak var numberLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
