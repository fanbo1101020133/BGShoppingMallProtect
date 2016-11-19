//
//  HomeTableViewController.swift
//  qqqqqqqqq
//
//  Created by 范博 on 2016/11/14.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController,UISearchBarDelegate {

    var isHidden:Bool = true
    var image:UIImage? = nil
    
    
    lazy var searchBar:UISearchBar = {
        let mainViewBounds = self.navigationController?.view.bounds
        let searchBar = UISearchBar(frame:CGRect(x:mainViewBounds!.width/2-((mainViewBounds!.width-120)/2), y:mainViewBounds!.minY+22, width:mainViewBounds!.width-120, height:40))
        searchBar.delegate = self;
        searchBar.showsCancelButton = false;
        searchBar.searchBarStyle = UISearchBarStyle.minimal;
        return searchBar
    }()
    
    
    lazy var headView:UIView = {
        let headView = UIView(frame:CGRect(x:UIScreen.main.bounds.origin.x,y:UIScreen.main.bounds.origin.y, width:UIScreen.main.bounds.size.width, height:220))
        headView.backgroundColor = UIColor.lightGray
        return headView
    }()
    
    
    lazy var scrollView:UIScrollView = {
        let scrollView = UIScrollView(frame:CGRect(x:UIScreen.main.bounds.origin.x,y:UIScreen.main.bounds.origin.y, width:UIScreen.main.bounds.size.width, height:220))
       
        return scrollView
    }()
    
    lazy var pageControl:UIPageControl = {
        let pageControl = UIPageControl(frame: CGRect(x:150, y:200, width:100, height:20))
        pageControl.numberOfPages = 5;
        pageControl.currentPage = 0;
        //        设置选中页码点的颜色和未选中页码点的颜色
        pageControl.currentPageIndicatorTintColor = UIColor.black
        pageControl.pageIndicatorTintColor = UIColor.gray
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName:"ShopingCellView", bundle: nil), forCellReuseIdentifier: "ShopingCell")
        tableView.register(UINib(nibName:"homeCellView", bundle: nil), forCellReuseIdentifier: "homeCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.view.addSubview(searchBar)
        self.tableView.tableHeaderView = headView
        //头部图片轮播器
        self.creatScrollView()
    }
    
    func creatScrollView(){
        //设置图片的宽和高
        let height = self.scrollView.frame.size.height
        let width = self.scrollView.frame.size.width
        
        //设置滚动视图的内容区域，以及允许分页功能
        scrollView.contentSize = CGSize(width:55 * width, height: height)
        scrollView.isPagingEnabled = true
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        //设置滚动视图的代理
        scrollView.delegate = self
        scrollView.backgroundColor = UIColor.lightGray
        self.headView.addSubview(scrollView)
        self.headView.addSubview(self.pageControl)
        for i in 0..<5 {
            //self.image = UIImage.init(contentsOfFile: Bundle.main.path(forResource: "s\(i + 1)", ofType: "jpg")!)!.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            self.image = UIImage.init()
            let start : CGFloat = CGFloat(i)
            let imageView : UIImageView = UIImageView(frame: CGRect(x:start * self.scrollView.frame.size.width, y:0, width: self.scrollView.frame.size.width, height:self.scrollView.frame.size.height))
            imageView.image = self.image
            self.scrollView.addSubview(imageView)
        }
        Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(HomeTableViewController.pageNumberChanged(sender:)), userInfo: nil, repeats: true)

    }
    
    func pageNumberChanged(sender : AnyObject){
        //        判断如果页数为最后一页，就从头开始
        if self.pageControl.currentPage == self.pageControl.numberOfPages - 1 {
            self.pageControl.currentPage = 0
        }
            //        依次往后滚动视图
        else{
            self.pageControl.currentPage += 1
        }
        
        //        设置图片显示
        let page : CGFloat = (CGFloat)(self.pageControl.currentPage)
        let x = page * self.scrollView.frame.width
        self.scrollView.contentOffset = CGPoint(x:x, y:0);
    }
    
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //每一个滚动视图的宽度
        let wid = scrollView.frame.size.width
        
        //当前页码
        let pageNumber : CGFloat = scrollView.contentOffset.x / wid
        self.pageControl.currentPage = (Int)(pageNumber)
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else{
            return 1
        }
    }
    

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 180
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        if indexPath.section == 0 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "homeCell")  as? homeCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("homeCellView", owner: nil, options: nil)!.last as? homeCellView
            }
            return cell!
        }else if indexPath.section == 1 {
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "homeCell")  as? homeCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("homeCellView", owner: nil, options: nil)!.last as? homeCellView
            }
            return cell!
        
        }else if indexPath.section == 2{
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "homeCell")  as? homeCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("homeCellView", owner: nil, options: nil)!.last as? homeCellView
            }
            return cell!
        
        }else if indexPath.section == 3{
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "ShopingCell")  as? ShopingCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("ShopingCellView", owner: nil, options: nil)!.last as? ShopingCellView
            }
            return cell!
            
        }else{
        
            var cell = tableView.dequeueReusableCell(withIdentifier: "homeCell")  as? homeCellView
            if cell == nil {
                cell = Bundle.main.loadNibNamed("homeCellView", owner: nil, options: nil)!.last as? homeCellView
            }
            cell?.image1.backgroundColor = UIColor.brown
            return cell!
        }
    
    }

}
