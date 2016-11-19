//
//  MineThreeCellView.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/17.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class MineThreeCellView: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sexLabel: UIImageView!
    @IBOutlet weak var starLabel: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
