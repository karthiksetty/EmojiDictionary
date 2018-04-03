//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Karthik Setty on 29.03.18.
//  Copyright © 2018 Karthik Setty. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {
    
    var emoji : Emoji = Emoji()

    @IBOutlet weak var emojiDetail: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var emojiText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiDetail.text = emoji.theEmoji
        categoryLabel.text = emoji.category
        yearLabel.text = String(emoji.releaseDate)
        emojiText.text = emoji.def
    }
}
