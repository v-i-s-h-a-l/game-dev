//
//  QuestionManager.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation

enum QuestionManager {

    static func textualQuestionWith(_ country: Country, questionType: QuestionType) -> TextualQuestionViewModel {
        let question: String
        let options: [String]
        
        let randomCountries = randomCountriesWith(country)
        let correctOptionIndex: Int = randomCountries.index(of: country) ?? -1
        
        switch questionType {
        case .capitalCountry:
            question = String(format: questionType.questionFormat, country.capital.capitalized)
            options = randomCountries.map { $0.rawValue.capitalized }
        case .countryCapital:
            question = String(format: questionType.questionFormat, country.rawValue.capitalized)
            options = randomCountries.map { $0.capital.capitalized }
        }
        return TextualQuestionViewModel(question: question, options: options, correctOptionIndex: correctOptionIndex)
    }
    
    private static func randomCountriesWith(_ country: Country) -> [Country] {
        var shuffledCountries = Country.allCases.shuffled()
        if let index = shuffledCountries.index(of: country) {
            shuffledCountries.remove(at: index)
        }
        
        var randomCountries = Array(shuffledCountries[...2])
        randomCountries.append(country)
        return randomCountries.shuffled()
    }
}
