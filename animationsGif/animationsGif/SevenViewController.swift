//
//  SevenViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 4/13/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class SevenViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var mokeyImage: UIImageView!
    
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyMotionEffect(toView: backgroundImage, magnitude: 10)
        applyMotionEffect(toView: mokeyImage, magnitude: -20)
        
        backBtn.layer.cornerRadius = 15g
        backBtn.layer.borderColor = UIColor.white.cgColor
        backBtn.layer.borderWidth = 2
    
    }
    
    // MARK: Moting effect function
    func applyMotionEffect(toView view: UIView, magnitude: CGFloat){
        let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = -magnitude
        xMotion.maximumRelativeValue = magnitude
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "cenetr.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = -magnitude
        yMotion.maximumRelativeValue = magnitude
        
        let motion = UIMotionEffectGroup()
        motion.motionEffects = [yMotion, xMotion]
        
        view.addMotionEffect(motion)
    }

}
