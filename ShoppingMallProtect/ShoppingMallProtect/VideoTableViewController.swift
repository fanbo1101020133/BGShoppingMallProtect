//
//  VideoTableViewController.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/15.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class VideoTableViewController: UITableViewController {
    
    lazy var headView:UIView = {
        let headView = UIView(frame:CGRect(x:UIScreen.main.bounds.origin.x,y:UIScreen.main.bounds.origin.y, width:UIScreen.main.bounds.size.width, height:180))
        headView.backgroundColor = UIColor.lightGray
        return headView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableHeaderView = headView
        tableView.register(UINib(nibName:"VideoCellView", bundle: nil), forCellReuseIdentifier: "VideoCell")
        tableView.register(UINib(nibName:"HodVideoCellView", bundle: nil), forCellReuseIdentifier: "HodVideoCell")
        tableView.register(UINib(nibName:"HodVideoSecCellView", bundle: nil), forCellReuseIdentifier: "HodVideoSecCell")
        tableView.register(UINib(nibName:"ExpertProfileCellView", bundle: nil), forCellReuseIdentifier: "ExpertProfileCell")
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        if indexPath.section == 0 {
            return 150
            
        }else if indexPath.section == 1 {
            return 150

        }else if indexPath.section == 2 {
            return 150
            
        }else{
            return 150
        }

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell")  as? VideoCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("VideoCellView", owner: nil, options: nil)!.last as? VideoCellView
            }
            return cell!
        }else if indexPath.section == 1 {
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "HodVideoCell")  as? HodVideoCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("HodVideoCellView", owner: nil, options: nil)!.last as? HodVideoCellView
            }
            return cell!
            
        }else if indexPath.section == 2{
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "HodVideoSecCell")  as? HodVideoSecCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("HodVideoSecCellView", owner: nil, options: nil)!.last as? HodVideoSecCellView
            }
            return cell!
            
        }else{
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "ExpertProfileCell")  as? ExpertProfileCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("ExpertProfileCellView", owner: nil, options: nil)!.last as? ExpertProfileCellView
            }
            cell?.image1.backgroundColor = UIColor.brown
            return cell!
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

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
