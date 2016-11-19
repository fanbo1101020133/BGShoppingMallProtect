//
//  NewsInfoTableViewController.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/16.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class NewsInfoTableViewController: UITableViewController {

    lazy var headerView:UIView = {
        let headerView = Bundle.main.loadNibNamed("NewInfoHeaderCellView", owner: nil, options: nil)!.last as? NewInfoHeaderCellView
        return headerView!
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"CommentInfoCellView", bundle: nil), forCellReuseIdentifier: "CommentInfoCell")
        tableView.register(UINib(nibName:"CommentInfoSecCellView", bundle: nil), forCellReuseIdentifier: "CommentInfoSecCell")
        tableView.register(UINib(nibName:"CommentCellView", bundle: nil), forCellReuseIdentifier: "CommentCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.tableHeaderView = headerView
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
        if section == 0 {
            return 1
        }else if section == 1{
            return 3
        }else{
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
//        if indexPath.section == 0 {
//            return 110
//            
//        }else if indexPath.section == 1 {
//            return 100
//            
//        }else{
//            return 250
//        }
//    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CommentInfoCell", for: indexPath)  as! CommentInfoCellView
            return cell
        }else if indexPath.section == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CommentInfoSecCell", for: indexPath)  as! CommentInfoSecCellView
            return cell
            
        }else{
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "CommentCell")  as? CommentCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("CommentCellView", owner: nil, options: nil)!.last as? CommentCellView
            }
            return cell!
            
        }
    }

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
