//
//  ExpertIconCellView.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/15.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class ExpertIconCellView: UITableViewCell {
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var englishName: UILabel!
    @IBOutlet weak var chineseName: UILabel!
    @IBOutlet weak var fansNumber: UILabel!
    @IBOutlet weak var tieziNumber: UILabel!
    @IBOutlet weak var localLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
