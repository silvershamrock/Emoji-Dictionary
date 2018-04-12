//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Ryan Miller on 4/11/18.
//  Copyright © 2018 Ryan Miller. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.category)"

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
    
    //This function gets run right before a segue and gives you the chance to pass things over to the other controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! GiantViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.theEmoji = "😃"
        smiley.def = "The face you make when someone dies"
        smiley.birthYear = 2010
        smiley.category = "Faces"
        
        let coffin = Emoji()
        coffin.theEmoji = "⚰️"
        coffin.def = "A vampire's bed with nice flowers"
        coffin.birthYear = 2011
        coffin.category = "Things"
        
        let mask = Emoji()
        mask.theEmoji = "👹"
        mask.def = "A devilish mask from Africa"
        mask.birthYear = 2012
        mask.category = "Faces"
        
        let skull = Emoji()
        skull.theEmoji = "💀"
        skull.def = "A corpse, a dead body"
        skull.birthYear = 2010
        skull.category = "Faces"
        
        return [smiley, coffin, mask, skull]
    }
}
