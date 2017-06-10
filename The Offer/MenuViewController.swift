//
//  MenuViewController.swift
//  The Offer
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    var isMenuOpen = false
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
       

        leadingConstraint.constant = -168
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func menuClick(_ sender: Any) {
        isMenuOpen = !isMenuOpen
        
        if isMenuOpen == true {
            leadingConstraint.constant = 0
        } else {
            leadingConstraint.constant = -167
        }
        UIView.animate(withDuration: 0.3) { 
            self.view.needsUpdateConstraints()
            self.view.layoutIfNeeded()
        }
        
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
