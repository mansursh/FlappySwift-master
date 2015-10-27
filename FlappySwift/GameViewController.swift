//
//  GameViewController.swift
//  FlappySwift
//
//  Created by Zaf on 10/26/2015.
//  Copyright © 2015 Muzaffar Sharapov. All rights reserved.
//


import UIKit
import SpriteKit
import ActionSwift3


class GameViewController: UIViewController {
    
    
    var flappyBird:FlappyBird?
    override func viewDidLoad() {
        super.viewDidLoad()
       let stage = Stage(self.view as! SKView)
       flappyBird = FlappyBird()
       stage.addChild(flappyBird!)
       flappyBird!.setUpTitleScreen()
        
    }


    override func shouldAutorotate() -> Bool {
        return false
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
}
