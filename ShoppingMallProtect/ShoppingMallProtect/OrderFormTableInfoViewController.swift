//
//  OrderFormTableInfoViewController.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/16.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class OrderFormTableInfoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName:"OrderFormInfoSecCellView", bundle: nil), forCellReuseIdentifier: "OrderFormInfoSecCell")
        tableView.register(UINib(nibName:"OrderFormInfoThreeCellView", bundle: nil), forCellReuseIdentifier: "OrderFormInfoThreeCell")
        tableView.register(UINib(nibName:"OderFormInfoForthCellView", bundle: nil), forCellReuseIdentifier: "OderFormInfoForthCell")
        tableView.register(UINib(nibName:"OrderFormInfoFiveCellView", bundle: nil), forCellReuseIdentifier: "OrderFormInfoFiveCell")
        tableView.register(UINib(nibName:"OrderFormInfoSixCellView", bundle: nil), forCellReuseIdentifier: "OrderFormInfoSixCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "OrderFormInfoSecCell", for: indexPath)  as! OrderFormInfoSecCellView
            return cell
        }else if indexPath.section == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "OrderFormInfoThreeCell", for: indexPath)  as! OrderFormInfoThreeCellView
            return cell
            
        }else if indexPath.section == 2 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "OderFormInfoForthCellView", for: indexPath)  as! OrderFormInfoForthCellView
            return cell
            
        }else if indexPath.section == 3 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "OrderFormInfoFiveCell", for: indexPath)  as! OrderFormInfoFiveCellView
            return cell
            
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "OrderFormInfoSixCell", for: indexPath)  as! OrderFormInfoSixCellView
            return cell
            
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
