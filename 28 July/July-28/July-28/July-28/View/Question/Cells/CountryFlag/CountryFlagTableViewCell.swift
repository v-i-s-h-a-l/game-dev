//
//  CountryFlagTableViewCell.swift
//  July-28
//
//  Created by Vishal Singh on 29/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

class CountryFlagTableViewCell: QuestionTableViewCell {

    func configureWith(viewModel: CountryFlagQuestionViewModel) {
        questionLabel.text = viewModel.question
        for (optionButton, option) in zip(optionButtons, viewModel.options) {
            optionButton.setTitle("  \(option)  ", for: .normal)
        }
    }
}
