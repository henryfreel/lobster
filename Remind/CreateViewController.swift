//
//  CreateViewController.swift
//  Remind
//
//  Created by siddiqui on 10/14/14.
//  Copyright (c) 2014 siddiqui. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var datePecker: UIImageView!
    @IBOutlet weak var datePick: UIImageView!
    @IBOutlet weak var blueCircle: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
         scrollView.contentSize = CGSizeMake(320, 640)
   
        // Do any additional setup after loading the view.
    }

    @IBAction func pinch(sender: UIPinchGestureRecognizer) {
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.blueCircle.frame.size.height = 80
            self.blueCircle.frame.size.width = 80
        })
      
    }

    @IBAction func endKey(sender: AnyObject) {
        view.endEditing(true)
    }
 
    @IBAction func onToggle(sender: AnyObject) {
        datePecker.alpha = 1
        blueCircle.alpha = 0
    }
    @IBAction func onCancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView!,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
            //if conditions here, if it goes past threshold, do the dismiss thing
            
            //if it did not, bring back colors
            if scrollView.contentOffset.y > -50 {
                println("offset")
                
            } else {
                
                dismissViewControllerAnimated(true, completion: nil)
                
               
            }
            
            
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
