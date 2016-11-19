//
//  CommentCellView.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/16.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class CommentCellView: UITableViewCell {
    @IBOutlet weak var faceBtn: UIButton!

    @IBOutlet weak var pictureBtn: UIButton!
    
    @IBOutlet weak var contextTextView: UITextView!
    
    @IBOutlet weak var responseBtn: UIButton!
    
    @IBOutlet weak var zhuanfaBtn: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
