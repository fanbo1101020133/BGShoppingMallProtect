//
//  View.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/15.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class View: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var titleBtn: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        titleBtn.addTarget(self, action: #selector(View.clickTitleBtn), for: .touchUpInside)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func  clickTitleBtn(){
        
    }

}
