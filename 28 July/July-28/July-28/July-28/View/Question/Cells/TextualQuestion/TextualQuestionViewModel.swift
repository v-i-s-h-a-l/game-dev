//
//  TextualQuestionViewModel.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation

protocol Question {
    var question: String { get set }
    var correctOptionIndex: Int { get set }
}

struct TextualQuestionViewModel: Question {

    var question: String
    let options: [String]
    var correctOptionIndex: Int
}
