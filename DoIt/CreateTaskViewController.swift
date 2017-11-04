//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Juan Tenezaca on 10/26/17.
//  Copyright © 2017 Juan Tenezaca. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addTapped(_ sender: Any) {
       
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn  // checks to see if the switch is on
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
}
