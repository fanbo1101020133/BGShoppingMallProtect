//
//  OrderFormCellView.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/16.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class OrderFormCellView: UITableViewCell {
    
    @IBOutlet weak var boardImage: UIImageView!
    @IBOutlet weak var boardNameLabel: UILabel!
    @IBOutlet weak var otherInage: UIImageView!
    @IBOutlet weak var GoodsImage: UIImageView!
    @IBOutlet weak var CoodsNameLabel: UILabel!
    @IBOutlet weak var paymentBtn: UIButton!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var GoodsNumberLabel: UILabel!
    @IBOutlet weak var totalNumber: UILabel!
    @IBOutlet weak var totalMoneyLabel: UILabel!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var instancePayBtn: UIButton!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
