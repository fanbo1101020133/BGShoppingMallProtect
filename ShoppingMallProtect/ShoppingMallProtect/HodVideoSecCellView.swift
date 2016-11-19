//
//  HodVideoSecCellView.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/15.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class HodVideoSecCellView: UITableViewCell {
    @IBOutlet weak var title1Label: UILabel!
    @IBOutlet weak var title2Laabel: UILabel!
    @IBOutlet weak var videoView: UILabel!
    @IBOutlet weak var videoBtn: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var peopleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
