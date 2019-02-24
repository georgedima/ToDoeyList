//
//  ViewController.swift
//  ToDoeyList
//
//  Created by Dima George on 24/02/2019.
//  Copyright © 2019 Dima George. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["1","2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //MARK - TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK - View Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none}
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
            
  
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
}



