//
//  CountryFlagQuestionViewModel.swift
//  July-28
//
//  Created by Vishal Singh on 29/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation

struct CountryFlagQuestionViewModel: Question {
    var question: String
    let options: [String]
    var correctOptionIndex: Int
}
