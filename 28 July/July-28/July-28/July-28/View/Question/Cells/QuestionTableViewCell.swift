//
//  QuestionTableViewCell.swift
//  July-28
//
//  Created by Vishal Singh on 29/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var optionButtons: [UIButton]!
    
    var onOptionSelected: ((Int) -> ()) = { _ in }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        contentView.backgroundColor = ScoreManager.backgroundColor1
    }
    
    @IBAction func optionSelected(_ sender: Any) {
        guard let tag = (sender as? UIButton)?.tag else { return }
        
        onOptionSelected(tag)
    }
}
