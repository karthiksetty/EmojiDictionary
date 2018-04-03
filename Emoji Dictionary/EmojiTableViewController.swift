//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Karthik Setty on 28.03.18.
//  Copyright © 2018 Karthik Setty. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return emojis.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.theEmoji) : \(emoji.category)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showDetail", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDetailViewController = segue.destination as! EmojiDetailViewController
        emojiDetailViewController.emoji = sender as! Emoji
    }
    
    func createEmojis() -> [Emoji] {
        
        let smily = Emoji()
        smily.theEmoji = "😀"
        smily.releaseDate = 2011
        smily.category = "Emotion"
        smily.def = "This is a smiling face"
        
        let shit = Emoji()
        shit.theEmoji = "💩"
        shit.releaseDate = 2017
        shit.category = "Body"
        shit.def = "This is a pile of shit"
        
        return [smily,shit]
    }


}
