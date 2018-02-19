//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Paul James Hearn on 2018-02-18.
//  Copyright © 2018 Paul James Hearn. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis = ["😀", "🚘", "🤠", "🍒", "✈️",]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }
    
    // This function code runs when user taps on any emoji cell
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "ourSegue", sender: nil)
    }
 
}


