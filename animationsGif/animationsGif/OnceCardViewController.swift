//
//  OnceCardViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 5/10/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class OnceCardViewController: UIViewController {

    @IBOutlet weak var card: UIView!
    
    @IBOutlet weak var thumbsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        card.layer.cornerRadius = 10
    }
    @IBAction func panCard(_ sender: UIPanGestureRecognizer) {
        let card = sender.view!
        let point = sender.translation(in: view)
        let xCenter = card.center.x - view.center.x
        
        card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        
        if xCenter > 0 {
            thumbsImageView.image = #imageLiteral(resourceName: "icons8-thumbs_up")
            thumbsImageView.tintColor = UIColor.green
        } else {
            thumbsImageView.image = #imageLiteral(resourceName: "icons8-thumbs_down")
            thumbsImageView.tintColor = UIColor.red
        }
        
        thumbsImageView.alpha = abs(xCenter) / view.center.x
        
        if sender.state == UIGestureRecognizerState.ended {
            
            if card.center.x < 75 {
                // Move to the left side
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x - 200, y: card.center.y + 75)
                    card.alpha = 0
                })
                return
                
            } else if card.center.x > (view.frame.width - 75) {
                // Move to the right side
                UIView.animate(withDuration: 0.3, animations: { 
                    card.center = CGPoint(x: card.center.x + 200, y: card.center.y + 75)
                    card.alpha = 0
                })
                return
            }
            
            UIView.animate(withDuration: 0.2) {
                card.center = self.view.center
                self.thumbsImageView.alpha = 0
            }
        }
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        resetCard()
    }

    func resetCard(){
        
        UIView.animate(withDuration: 0.2) { 
            self.card.center = self.view.center
            self.thumbsImageView.alpha = 0
            self.card.alpha = 1
        }
        
    }
}



