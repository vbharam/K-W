//
//  AllNewsViewController.swift
//  kaw_new1
//
//  Created by Vishal Bharam on 2/24/16.
//  Copyright © 2016 CODECOOP. All rights reserved.
//

import UIKit

class AllNewsViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
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
        if (indexPath.row == 0){
            return CAROUSELCELL_ADJUSTED_HEIGHT
        } else {
            return TABLECELL_ADJUSTED_HEIGHT
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if (indexPath.row == 0){
            if let carouselCell = tableView.dequeueReusableCellWithIdentifier("CarouselCell", forIndexPath: indexPath) as? CarouselTableViewCell {
                //Swipe Right:
                let swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
                swipeRight.direction = UISwipeGestureRecognizerDirection.Right
                carouselCell.addGestureRecognizer(swipeRight)
                
                //Swipe Left
                let swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
                swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
                self.view.addGestureRecognizer(swipeLeft)
                
                return carouselCell
            }
        } else {
            if let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as? AllTableViewCell {
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            // Right:
            case UISwipeGestureRecognizerDirection.Right:
                print("Swiped right")
                break
            // Left:
            case UISwipeGestureRecognizerDirection.Left:
                print("Swiped Left")
                break
            default:
                break
            }
        }
    }
    
    
    override func viewDidLayoutSubviews() {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
