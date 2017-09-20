//
//  ViewController.swift
//  Video
//
//  Created by Hitesh V-PI on 12/06/17.
//  Copyright © 2017 Pixabit Infotech. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var fileURL = NSURL(fileURLWithPath: "/Users/hiteshv-pi/Downloads/Ik Vaari - Ayushmann Khurrana - Video MP4.mp4")
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        
        self.present(playerViewController, animated: true) {
            self.playerViewController.player?.play()
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

