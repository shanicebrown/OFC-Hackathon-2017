//
//  WebViewController.swift
//  The Offer
//
//  Created by Apple on 5/18/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {


    @IBAction func tourButtonTap(_ sender: Any) {
        if let url = URL(string:"http://www.youvisit.com/tour/accenture_enhanced"){
            
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                // Fallback on earlier versions
                UIApplication.shared.openURL(url as URL)
            }
        }

        
        
    
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
/*

if let url = NSURL(string:"http://www.youvisit.com/tour/accenture_enhanced"){
    
    UIApplication.sharedApplication().openURL(url)
}
*/
