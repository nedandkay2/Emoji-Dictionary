//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Paul James Hearn on 2018-02-19.
//  Copyright © 2018 Paul James Hearn. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    
    var emoji = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       emojiLabel.text = emoji
        
    // ["♞","⚽️","🐥","😀", "⛪️","🚘", "🤠", "🍒", "✈️", "⏰", "🇨🇦",]
        
        if emoji == "♞" {
            emojiDefinitionLabel.text = "Knight Chess Piece"
            birthLabel.text = "Birth year: 1690"
            categoryLabel.text = "Category: Games"
        }
        if emoji == "⚽️" {
            emojiDefinitionLabel.text = "A soccar ball"
            birthLabel.text = "Birth year: 1900"
            categoryLabel.text = "Category: Sports"
        }
        if emoji == "🐥" {
            emojiDefinitionLabel.text = "A baby chick"
            birthLabel.text = "Birth year: 1200"
            categoryLabel.text = "Category: Animals"
        }
        if emoji == "😀" {
            emojiDefinitionLabel.text = "Happy Face"
            birthLabel.text = "Birth year: 1990"
            categoryLabel.text = "Category: Graphics"
        }
        if emoji == "⛪️" {
            emojiDefinitionLabel.text = "A Church"
            birthLabel.text = "Birth year: 1010"
            categoryLabel.text = "Category: Buildings"
        }
        
    }
 
}
