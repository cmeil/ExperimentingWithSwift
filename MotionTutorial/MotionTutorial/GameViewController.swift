//
//  GameViewController.swift
//  MotionTutorial
//
//  Created by jim Veneskey on 10/9/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    lazy var gameScene: GameScene? = GameScene(fileNamed: "GameScene")

    @IBAction func resetScene(sender: UIButton) {
        if let scene = self.gameScene {
            scene.reset()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let scene = gameScene {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
        }

    }
    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
