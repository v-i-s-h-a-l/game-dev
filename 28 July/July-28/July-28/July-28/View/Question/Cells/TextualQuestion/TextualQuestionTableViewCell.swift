//
//  TextualQuestionTableViewCell.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

class TextualQuestionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var optionButtons: [UIButton]!
    
    var onOptionSelected: ((Int) -> ()) = { _ in }
    
    private var correctOption: Int = -1
    
    func configureWith(viewModel: TextualQuestionViewModel) {
        questionLabel.text = viewModel.question
        for (optionButton, option) in zip(optionButtons, viewModel.options) {
            optionButton.setTitle(option, for: .normal)
        }
        correctOption = viewModel.correctOptionIndex
    }

    @IBAction func optionSelected(_ sender: Any) {
        guard let tag = (sender as? UIButton)?.tag else { return }
        
        onOptionSelected(tag)
    }
}
