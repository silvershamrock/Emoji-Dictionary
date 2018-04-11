//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Ryan Miller on 4/11/18.
//  Copyright © 2018 Ryan Miller. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis = ["😃","💀","👁","⚰️","👹"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
    
    //This function gets run right before a segue and gives you the chance to pass things over to the other controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! GiantViewController
        emojiDefVC.emoji = sender as! String
    }
}
