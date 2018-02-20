//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Paul James Hearn on 2018-02-19.
//  Copyright © 2018 Paul James Hearn. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    
    var emoji = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       emojiLabel.text = emoji
        
    // ["♞","⚽️","🐥","😀", "⛪️","🚘", "🤠", "🍒", "✈️", "⏰", "🇨🇦",]
        
        if emoji == "♞" {
            emojiDefinitionLabel.text = "Knight Chess Piece"
        }
        if emoji == "⚽️" {
            emojiDefinitionLabel.text = "A soccar ball"
        }
        if emoji == "🐥" {
            emojiDefinitionLabel.text = "A baby chick"
        }
        if emoji == "😀" {
            emojiDefinitionLabel.text = "Happy Face"
        }
        if emoji == "⛪️" {
            emojiDefinitionLabel.text = "A Church"
        }
        
    }
 
}
