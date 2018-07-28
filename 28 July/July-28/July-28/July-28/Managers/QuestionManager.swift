//
//  QuestionManager.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation

enum QuestionManager {

    static func textualQuestionWith(_ country: Country, questionType: QuestionType) -> TextualQuestionViewModel? {
        let question: String
        let options: [String]
        var questionFontSize: Double = 24.0
        
        let randomCountries = randomCountriesWith(country)
        let correctOptionIndex: Int = randomCountries.index(of: country) ?? -1
        
        switch questionType {
        case .capitalCountry:
            question = String(format: questionType.questionFormat, country.capital.capitalized)
            options = randomCountries.map { $0.rawValue.capitalized }
        case .countryCapital:
            question = String(format: questionType.questionFormat, country.rawValue.capitalized)
            options = randomCountries.map { $0.capital.capitalized }
        case .flagCountry:
            question = String(format: questionType.questionFormat, country.flag)
            options = randomCountries.map { $0.rawValue.capitalized }
            questionFontSize = 84.0
        case .countryFlag:
            return nil
        }
        return TextualQuestionViewModel(question: question, options: options, correctOptionIndex: correctOptionIndex, questionFontSize: questionFontSize)
    }
    
    static func countryFlagQuestionWith(_ country: Country) -> CountryFlagQuestionViewModel {
        let randomCountries = randomCountriesWith(country)
        let correctOptionIndex: Int = randomCountries.index(of: country) ?? -1
        
        let question = String(format: QuestionType.countryFlag.questionFormat, country.rawValue.capitalized)
        let options = randomCountries.map { $0.flag }
        return CountryFlagQuestionViewModel(question: question, options: options, correctOptionIndex: correctOptionIndex)
    }
    
    private static func randomCountriesWith(_ country: Country) -> [Country] {
        let otherCountries = (Country.allCases.filter { $0 != country }).shuffled()
        let randomIndex = Int.random(in: 0..<(otherCountries.count - 3))
        var randomCountries = Array(otherCountries[randomIndex...randomIndex + 2])
        randomCountries.append(country)

        return randomCountries.shuffled()
    }
}
