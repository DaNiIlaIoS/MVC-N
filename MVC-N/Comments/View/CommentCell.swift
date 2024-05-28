//
//  CommentCell.swift
//  MVC-N
//
//  Created by Даниил Сивожелезов on 28.05.2024.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
