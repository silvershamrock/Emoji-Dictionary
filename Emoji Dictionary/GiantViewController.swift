//
//  GiantViewController.swift
//  Emoji Dictionary
//
//  Created by Ryan Miller on 4/11/18.
//  Copyright © 2018 Ryan Miller. All rights reserved.
//

import UIKit

class GiantViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.theEmoji
        emojiDefinitionLabel.text = emoji.def
        birthLabel.text = "Birth Year: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        
    }
    
}
