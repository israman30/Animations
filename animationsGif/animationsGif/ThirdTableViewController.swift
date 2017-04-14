//
//  ThirdTableViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 4/11/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class ThirdTableViewController: UIViewController {

    @IBOutlet weak var oneBtn: UIButton!
    
    @IBOutlet weak var twoBtn: UIButton!
    
    @IBOutlet weak var threeBtn: UIButton!
    
    @IBOutlet weak var fourBtn: UIButton!
    
    var oneBtnCenter: CGPoint!
    
    var twoBtnCenter: CGPoint!
    
    var threeBtnCenter: CGPoint!
    
    var fourBtnCenter: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        twoBtnCenter = twoBtn.center
        threeBtnCenter = threeBtn.center
        fourBtnCenter = fourBtn.center
        
        twoBtn.center = oneBtn.center
        threeBtn.center = oneBtn.center
        fourBtn.center = oneBtn.center
        
    }
    
    @IBAction func showButtons(_ sender: UIButton) {
        
        if sender.currentImage == #imageLiteral(resourceName: "up") {
            
            UIView.animate(withDuration: 0.3, animations: {
                self.twoBtn.alpha = 1
                self.threeBtn.alpha = 1
                self.fourBtn.alpha = 1
                
                self.twoBtn.center = self.twoBtnCenter
                self.threeBtn.center = self.threeBtnCenter
                self.fourBtn.center = self.fourBtnCenter
            })
            
            sender.setImage(#imageLiteral(resourceName: "down"), for: .normal)
            
        } else {
            
            UIView.animate(withDuration: 0.3, animations: {
                self.twoBtn.alpha = 0
                self.threeBtn.alpha = 0
                self.fourBtn.alpha = 0
                
                self.twoBtn.center = self.oneBtn.center
                self.threeBtn.center = self.oneBtn.center
                self.fourBtn.center = self.oneBtn.center
                
            })
            
            sender.setImage(#imageLiteral(resourceName: "up"), for: .normal)
        }
    }
    
    // MARK: This function will toggle the buttons
    func toggleButton(button: UIButton, imageOn: UIImage, imageOff: UIImage){
        if button.currentImage == imageOff {
            
            button.setImage(imageOn, for: .normal)
            
        } else {
            
            button.setImage(imageOff, for: .normal)
        }
    }
    
    @IBAction func unwindToThird(_:UIStoryboardSegue){}
}



