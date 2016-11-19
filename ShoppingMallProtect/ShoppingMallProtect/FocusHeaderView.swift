//
//  FocusHeaderView.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/18.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit


class FocusHeaderView: UITableViewHeaderFooterView {


    func CreateHeaderView(tableView:UITableView) -> FocusHeaderView{
    
        return Bundle.main.loadNibNamed("FocusHeaderView", owner: nil, options: nil)!.last as! FocusHeaderView
    }
        
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let headView = Bundle.main.loadNibNamed("FocusHeaderView", owner: nil, options: nil)!.last as? FocusHeaderView

    }
    

    
    
}
