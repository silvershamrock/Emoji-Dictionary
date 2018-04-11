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
    
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji=="👹" {
            emojiDefinitionLabel.text = "A devilish mask from Africa"
        } else if emoji=="⚰️" {
            emojiDefinitionLabel.text = "A vampire's coffin with flowers"
        } else if emoji=="👁" {
            emojiDefinitionLabel.text = "A monstrous eye that reads minds"
        } else if emoji=="💀" {
            emojiDefinitionLabel.text = "A corpse, a dead body"
        } else if emoji=="😃" {
            emojiDefinitionLabel.text = "That face you make when someone dies"
        }
    }
    
}
