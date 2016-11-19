//
//  FocusTableViewController.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/15.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit


class FocusTableViewController: UITableViewController {

    var headerViews:Array = [UIView]()
    var selections:Array = [Bool]()
    
    lazy var headView:FocusHeaderView = {
        let headView = Bundle.main.loadNibNamed("FocusHeaderView", owner: nil, options: nil)!.last as? FocusHeaderView
        headView?.frame = CGRect(x:0, y:0, width:100, height:44)
        headView?.backgroundColor = UIColor.lightGray
        let tap:UITapGestureRecognizer = UITapGestureRecognizer()
        tap.addTarget(self, action: #selector(tapHeaderView(sender:)))
        headView?.addGestureRecognizer(tap)
        return headView!
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName:"FoucsCellView", bundle: nil), forCellReuseIdentifier: "FoucsCell")
        
        for _ in 0..<3 {
            headerViews.append(headView)
            selections.append(false)
        }
       
    }
    

    func tapHeaderView(sender:UITapGestureRecognizer){
    
        let headerView = sender.view as? FocusHeaderView
        let section = self.headerViews.index(of: headerView!)! as Int
        if selections[section]{
            selections.replaceSubrange(Range(section..<section + 1), with: [false])
            tableView.reloadData()
        }else{
            selections.replaceSubrange(Range(section..<section + 1), with: [true])
            tableView.reloadData()

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if section == 0 {
            
            if selections[section] as Bool{
                return 4
            }else{
                return 1
            }
        }else if section == 1{
            if selections[section] as Bool{
                return 4
            }else{
                return 1
            }
        }else{
            if selections[section] as Bool{
                return 4
            }else{
                return 1
            }
        }

    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if tableView.dequeueReusableHeaderFooterView(withIdentifier: "hf") != nil{
        
            let hf:UITableViewHeaderFooterView = UITableViewHeaderFooterView(reuseIdentifier: "hf")
            hf.addSubview(headView)
            return hf

        }else{
            return nil
        }
        
        
    }

    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 44

    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: "FoucsCell")  as? FoucsCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("FoucsCellView", owner: nil, options: nil)!.last as? FoucsCellView
            }
        return cell!
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//        if indexPath.row == 12 {
//            self.tableView.reloadData()
//        }else if indexPath.row == 0{
//            self.tableView.reloadData()
//
//        
//        }else if indexPath.row == 2{
//            self.tableView.reloadData()
//        
//        }else if indexPath.row == 4{
//            
//            self.tableView.reloadData()
//        }else if indexPath.row == 6{
//            
//            self.tableView.reloadData()
//        }else if indexPath.row == 8{
//            self.tableView.reloadData()
//            
//        }else if indexPath.row == 10{
//            
//        }
//    
//    }
//
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    


}
