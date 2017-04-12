//
//  FiveTableViewController.swift
//  animationsGif
//
//  Created by Israel Manzo on 4/11/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class FiveTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animateTable()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 40
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = "Animations Effects \(indexPath.row)"

        return cell
    }
    
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
    

 
}
