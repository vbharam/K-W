//
//  BookmarksViewController.swift
//  kaw_new1
//
//  Created by Vishal Bharam on 2/26/16.
//  Copyright © 2016 CODECOOP. All rights reserved.
//

import UIKit

class BookmarksViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableView:
        self.myTableView.delegate=self
        self.myTableView.dataSource=self
        self.myTableView.separatorColor=UIColor.clearColor()
        // self.myTableView.rowHeight = UITableViewAutomaticDimension
        // self.myTableView.estimatedRowHeight = 160.0
        self.myTableView.allowsSelection=false
        self.myTableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return TABLECELL_ADJUSTED_HEIGHT
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:AllTableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! AllTableViewCell
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
