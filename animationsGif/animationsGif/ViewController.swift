//
//  ViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 3/7/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var buttonAnimate: UIButton!
    var counter = 1
    
    var isAnimated = false
    
    var timer =  Timer()
    
    func animated(){
    
        image.image = UIImage(named: "\(counter).gif")
        
        counter += 1
        
        if counter == 49 {
            counter = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func animation(_ sender: Any) {
        
        if isAnimated {
            timer.invalidate()
            buttonAnimate.setTitle("Start Animating", for: [])
            isAnimated = false
        } else {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.animated), userInfo: nil, repeats: true)
            buttonAnimate.setTitle("Stop Animatiing", for: [])
            isAnimated = true
        }
        
    }

    @IBAction func fadeIn(_ sender: Any) {
        
        image.alpha = 0
        UIView.animate(withDuration: 1) { 
             self.image.alpha = 1
        }
    }
    
    @IBAction func slideIn(_ sender: Any) {
        
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        UIView.animate(withDuration: 2) { 
            self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)
        }
    }
    
    @IBAction func grown(_ sender: Any) {
        
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        UIView.animate(withDuration: 1) { 
            self.image.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        }
    }

}
















