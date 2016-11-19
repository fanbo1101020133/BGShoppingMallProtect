//
//  CommentInfoCellView.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/16.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class CommentInfoCellView: UITableViewCell {
    @IBOutlet weak var peopleImageView: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nianTimeLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var texLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
