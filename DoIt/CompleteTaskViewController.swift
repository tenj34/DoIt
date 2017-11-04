//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Juan Tenezaca on 10/28/17.
//  Copyright © 2017 Juan Tenezaca. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = TasksViewController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important{
            taskLabel.text = "❗️\(task.name)"
        }else {
            taskLabel.text = task.name
        }
    }

    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
}
