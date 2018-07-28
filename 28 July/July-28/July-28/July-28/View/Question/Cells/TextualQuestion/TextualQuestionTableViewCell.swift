//
//  TextualQuestionTableViewCell.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

class TextualQuestionTableViewCell: QuestionTableViewCell {
    
    func configureWith(viewModel: TextualQuestionViewModel) {
        questionLabel.text = viewModel.question
        questionLabel.font = questionLabel.font.withSize(CGFloat(viewModel.questionFontSize))
        for (optionButton, option) in zip(optionButtons, viewModel.options) {
            optionButton.setTitle(option, for: .normal)
        }
    }
}
