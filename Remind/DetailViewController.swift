//
//  DetailViewController.swift
//  Remind
//
//  Created by siddiqui on 10/14/14.
//  Copyright (c) 2014 siddiqui. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var onDetail: UIButton!

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = CGSizeMake(320, 640)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView!,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
            //if conditions here, if it goes past threshold, do the dismiss thing
            
            //if it did not, bring back colors
            if scrollView.contentOffset.y > -20 {
                println("offset")
                
            } else {
                
                dismissViewControllerAnimated(true, completion: nil)
                
                
            }
            
            
    }
    

   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
