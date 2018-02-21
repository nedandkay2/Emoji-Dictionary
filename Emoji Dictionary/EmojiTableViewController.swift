//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Paul James Hearn on 2018-02-18.
//  Copyright © 2018 Paul James Hearn. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    // create the array emojis
    var emojis  : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // emojis array is populated by the createEmojis func
        emojis = createEmojis()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        
        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.category)"
        
        return cell
    
    
    }
    
    // This function code runs when user taps on any emoji cell
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
    // this function returns information from the Emoji class properties
    func createEmojis() -> [Emoji] {
        
        let knight = Emoji()
        knight.theEmoji = "♞"
        knight.def = "A powerful chess piece"
        knight.birthYear = 1230
        knight.category = "Games"
        
        let church =  Emoji()
        church.theEmoji = "⛪️"
        church.def = "A lovely Church"
        church.birthYear = 1963
        church.category = "Buildings"
        
        return [knight, church]
    }
 
}


