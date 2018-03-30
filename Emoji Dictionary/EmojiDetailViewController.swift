//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Karthik Setty on 29.03.18.
//  Copyright © 2018 Karthik Setty. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {
    
    var emoji = " "

    @IBOutlet weak var emojiDetail: UILabel!
    @IBOutlet weak var emojiText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiDetail.text = emoji
        
        if emoji == "💩" {
            emojiText.text = "This is shit"
        }
    }
}
