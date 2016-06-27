//
//  ViewController.swift
//  KAW_Universal
//
//  Created by Vishal Bharam on 2/12/16.
//  Copyright © 2016 CODECOOP. All rights reserved.
//


import UIKit
import Foundation

class HomeViewController: UIViewController, YSSegmentedControlDelegate {
    
    
    
    @IBOutlet var containerView: UIView!
 
    var currentViewController: UIViewController?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let segmented = YSSegmentedControl(
            frame: CGRect(
                x: 0,
                y: 60,
                width: view.frame.size.width,
                height: 44),
            titles: [
                "ALL NEWS",
                "MOST POPULAR",
                "BOOKMARKS"
            ],
            action: {
                control, index in
                // print ("segmented did pressed \(index)")
        })
        segmented.delegate = self
        view.addSubview(segmented)
        
        // Load All News Controller
        self.currentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("AllNewsViewController")
        self.currentViewController!.view.translatesAutoresizingMaskIntoConstraints = false
        self.addChildViewController(self.currentViewController!)
        self.addChildView(self.currentViewController!.view, toView: self.containerView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addChildView(subView:UIView, toView parentView:UIView) {
        parentView.addSubview(subView)
        
        var viewBindingsDict = [String: AnyObject]()
        viewBindingsDict["subView"] = subView
        parentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[subView]|",
            options: [], metrics: nil, views: viewBindingsDict))
        parentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[subView]|",
            options: [], metrics: nil, views: viewBindingsDict))
    }
    
    
    // MARK: YSSegmentedControlDelegate
    
    func segmentedControlWillPressItemAtIndex(segmentedControl: YSSegmentedControl, index: Int) {
        //print ("[Delegate] segmented will press \(index)")
    }
    
    func segmentedControlDidPressedItemAtIndex(segmentedControl: YSSegmentedControl, index: Int) {
       // print ("[Delegate] segmented did pressed \(index)")
        switch index {
            // Case 0: ALL NEWS
            case 0:
                let newViewController = self.storyboard?.instantiateViewControllerWithIdentifier("AllNewsViewController")
                newViewController!.view.translatesAutoresizingMaskIntoConstraints = false
                cycleFromViewController(currentViewController!, toViewController: newViewController!)
                break
            
            // Case 1: MOST POPULAR
            case 1:
                //For Testing APIServiceManager, Need to remove this from here
                let requestDict = ["profile":["firstName":"AnilBotsa","lastName":"","deviceId":"A68E4D5A-3E4D-4EFA-93D6-6643241AC34D","providerType":"TWITTER","providerUQId":"964631431","userName":""],"actionType":"SaveProfile"]
                APIServiceManager.updateUserDetails(requestDict, completionBlock: { (response) -> Void in
                    if (response.isSuccess){
                        print("success")
                    }else {
                        print("Error")
                    }
                })
                
                let newViewController = self.storyboard?.instantiateViewControllerWithIdentifier("MostPopularViewController")
                newViewController!.view.translatesAutoresizingMaskIntoConstraints = false
                cycleFromViewController(currentViewController!, toViewController: newViewController!)
                break
            
            // Case 2: BOOKMARKS
            case 2:
                let newViewController = self.storyboard?.instantiateViewControllerWithIdentifier("BookmarksViewController")
                newViewController!.view.translatesAutoresizingMaskIntoConstraints = false
                cycleFromViewController(currentViewController!, toViewController: newViewController!)
                break
            
            default:
                break
        }
        
    }
    
    func cycleFromViewController(oldViewController: UIViewController, toViewController newViewController: UIViewController) {
        oldViewController.willMoveToParentViewController(nil)
        self.addChildViewController(newViewController)
        self.addChildView(newViewController.view, toView:self.containerView!)
        // TODO: Set the starting state of your constraints here
        newViewController.view.layoutIfNeeded()
        
        // TODO: Set the ending state of your constraints here
        
        UIView.animateWithDuration(0.5, animations: {
            // only need to call layoutIfNeeded here
            newViewController.view.layoutIfNeeded()
            },
            completion: { finished in
                oldViewController.view.removeFromSuperview()
                oldViewController.removeFromParentViewController()
                newViewController.didMoveToParentViewController(self)
        })
    }
    
    @IBAction func searchClick(sender: UIButton) {
        // let searchViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SearchViewController") as! SearchViewController
        // self.navigationController?.pushViewController(searchViewController, animated: false)
    }
    
    @IBAction func menuClick(sender: UIButton) {
        //let settingViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SettingViewController") as! SettingViewController
        //self.navigationController?.pushViewController(settingViewController, animated: false)
    }
    
    
    
}

