//
//  FiveTableViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 4/11/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class FiveTableViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableViewLabelAnimation: UILabel!
    
    @IBOutlet weak var backBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Editing table view
        tableViewLabelAnimation.layer.borderColor = UIColor.red.cgColor
        tableViewLabelAnimation.layer.borderWidth = 2.5
        tableViewLabelAnimation.layer.cornerRadius = 10
        
        // Editing back and next buttons
        backBtn.layer.cornerRadius = 5
        backBtn.layer.borderColor = UIColor.white.cgColor
        backBtn.layer.borderWidth = 2
        
        nextBtn.layer.cornerRadius = 5
        nextBtn.layer.borderColor = UIColor.white.cgColor
        nextBtn.layer.borderWidth = 2

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        animateTable()
    }

    // MARK: - Table view data source
     func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 40
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = "Animations Effects \(indexPath.row)"
        
        
        // Editing cell
        cell.layer.cornerRadius = 15
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.yellow.cgColor
        
        cell.layer.shadowOffset = CGSize(width: 2, height: 2)
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 1
        cell.layer.shadowRadius = 1
        cell.layer.masksToBounds = false

        return cell
    }
    
    // MARK: THis function will animate the cell
    func animateTable(){
        tableView.reloadData()
        let cells = tableView.visibleCells
        let tableViewEffect = tableView.bounds.size.height
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewEffect)
        }
        
        var delayTime = 0
        for cell in cells {
            UIView.animate(withDuration: 1.75, delay: Double(delayTime) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: { 
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delayTime += 1
        }
    }
    
    @IBAction func unwindToFive(_:UIStoryboardSegue){}
 
}
