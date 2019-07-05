//
//  AddToDOViewController.swift
//  ToDoList
//
//  Created by Eric Smith on 7/5/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//

import UIKit

class AddToDOViewController: UIViewController {
// iteration 1
    var previousVC = ToDoListTableViewController()
// iteration 1
    @IBOutlet weak var titleTextField: UITextField!
 // iteration 1
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
// iteration 1
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
