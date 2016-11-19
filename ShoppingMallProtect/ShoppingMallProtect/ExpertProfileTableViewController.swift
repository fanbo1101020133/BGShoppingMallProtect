//
//  ExpertProfileTableViewController.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/15.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class ExpertProfileTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.register(UINib(nibName:"ExpertIconCellView ", bundle: nil), forCellReuseIdentifier: "ExpertIconCell")
        tableView.register(UINib(nibName:"TextInfoCellView", bundle: nil), forCellReuseIdentifier: "TextInfoCell")
        tableView.register(UINib(nibName:"ExpertVideoCellView", bundle: nil), forCellReuseIdentifier: "ExpertVideoCell")
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
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if indexPath.section == 0 {
                var cell = tableView.dequeueReusableCell(withIdentifier: "ExpertIconCell")  as? ExpertIconCellView
                if cell == nil {
                    cell = Bundle.main.loadNibNamed("ExpertIconCellView ", owner: nil, options: nil)!.last as? ExpertIconCellView
                }
                return cell!

            }else if indexPath.section == 1 {
                
                var cell = tableView.dequeueReusableCell(withIdentifier: "TextInfoCell")  as? TextInfoCellView
                if cell == nil {
                    cell = Bundle.main.loadNibNamed("TextInfoCellView", owner: nil, options: nil)!.last as? TextInfoCellView
                }
                return cell!
                
            }else{
                
                var cell = tableView.dequeueReusableCell(withIdentifier: "ExpertVideoCell")  as? ExpertVideoCellView
                if cell == nil {
                    cell = Bundle.main.loadNibNamed("ExpertVideoCellView", owner: nil, options: nil)!.last as? ExpertVideoCellView
                }
                return cell!
                
        }
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        if indexPath.section == 0{
            return 200

        }else if indexPath.section == 1{
            return 130
        }
        
        return 200
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
