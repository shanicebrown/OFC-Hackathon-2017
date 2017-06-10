//
//  VideoViewController.swift
//  The Offer
//
//  Created by Apple on 5/19/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import MobileCoreServices

class VideoViewController: UIViewController {

    
    @IBAction func album(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    ()viewDidAppear:(BOOL)animated{
    
    //AVPlayerViewController *avcontrol = [[AVPlayerViewController alloc]init;];
    //NSString *urlVideo = [NSBundle mainBundle]pathForResource:@"12" ofType: @"mp4"];
    //NSURL *url = [NSURL fileURLWithPath:urlVideo];
    //avcontrol.player = [AVPlayer playerWithURL:url];
    //[self presentVideoViewController:avcontrol animated:YES completion:nil];
    
//    }
    
    
    
    
    
    @IBAction func camera(_ sender: Any)
    {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.mediaTypes = [kUTTypeMovie as String]
        
        picker.sourceType = UIImagePickerControllerSourceType.camera
        
        present(picker, animated: true, completion: nil)
        
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


extension VideoViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let videoURL = info[UIImagePickerControllerMediaURL]
    }
    
}
