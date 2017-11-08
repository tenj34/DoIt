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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addTapped(_ sender: Any) {
       
        let context  = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context) // will help us add in core data
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn  // checks to see if the switch is on
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext() // this will save in core data
        
        navigationController!.popViewController(animated: true)
        
    }
}
