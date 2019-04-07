//
//  TodoListViewController.swift
//  Todoey
//
//  Created by Erik Zephyr on 06/04/2019.
//  Copyright © 2019 Erik Zephyr. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

  let streets = ["Albemarle", "Brandywine", "Chesapeake"]
  let oddCellColor = UIColor(red:0.95, green:0.96, blue:0.97, alpha:1.0)
  let evenCellColor = UIColor(red:0.79, green:0.80, blue:0.82, alpha:1.0)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return streets.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "TodoItemCell")
    cell.textLabel?.text = streets[indexPath.row]
    
    if indexPath.row % 2 == 0 {
      cell.backgroundColor = oddCellColor
    } else {
      cell.backgroundColor = UIColor.white
    }
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView,
                          heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 50
  }
}
