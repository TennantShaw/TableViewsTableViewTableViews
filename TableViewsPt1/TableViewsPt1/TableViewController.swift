//
//  TableViewController.swift
//  TableViewsPt1
//
//  Created by Tennant Shaw on 5/14/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var characterStore: CharacterStore!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterStore.allCharacters.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let character = characterStore.allCharacters[indexPath.row]
        
        cell.textLabel?.text = character.name
        cell.detailTextLabel?.text = "Age: \(character.age)"
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
}
