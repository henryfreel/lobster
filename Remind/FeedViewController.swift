//
//  FeedViewController.swift
//  Remind
//
//  Created by siddiqui on 10/14/14.
//  Copyright (c) 2014 siddiqui. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var feedView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
       scrollView.contentSize = CGSizeMake(320, 580)
        scrollView.delegate = self

        // Do any additional setup after loading the view.
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        println("scrolling")

        
    }
    
    
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView!) {
        println("began")
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView!,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
            //if conditions here, if it goes past threshold, do the dismiss thing
            
            //if it did not, bring back colors
            if scrollView.contentOffset.y > -50 {
              println("offset")
                
            } else {
              
                performSegueWithIdentifier("firstSegue", sender: self)
           
                
                //dismissViewControllerAnimated(true, completion: nil)
            }
            
            
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // This method is called when the scrollview finally stops scrolling.
        
        
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
