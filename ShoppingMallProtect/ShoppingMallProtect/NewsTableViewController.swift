//
//  NewsTableViewController.swift
//  ShoppingMallProtect
//
//  Created by 范博 on 2016/11/15.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    lazy var headView:UIView = {
        let headView = UIView(frame:CGRect(x:UIScreen.main.bounds.origin.x,y:UIScreen.main.bounds.origin.y, width:UIScreen.main.bounds.size.width, height:180))
        headView.backgroundColor = UIColor.lightGray
        return headView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName:"View", bundle: nil), forCellReuseIdentifier: "ViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        headView.backgroundColor = UIColor.brown
        self.tableView.tableHeaderView = headView

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: "ViewCell")  as? View
            if cell == nil {
                cell = Bundle.main.loadNibNamed("View", owner: nil, options: nil)!.last as? View
            }
            return cell!
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 180
    }


}
