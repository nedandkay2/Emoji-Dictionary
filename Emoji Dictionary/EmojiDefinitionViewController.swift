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
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.theEmoji
        emojiDefinitionLabel.text = emoji.def
        birthLabel.text = "Release Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        
    }
 
}
