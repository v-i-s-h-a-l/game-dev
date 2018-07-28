//
//  QuestionType.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation

enum QuestionType: Int, CaseIterable {
    case capitalCountry = 0         // guess country from given capital
    case countryCapital             // guess capital from given country
    case countryFlag                // guess the flag for the given country
    
    var cellClassName: String {
        switch self {
        case .capitalCountry, .countryCapital: return String(describing: TextualQuestionTableViewCell.self)
        case .countryFlag: return String(describing: CountryFlagTableViewCell.self)
        }
    }

    var questionFormat: String {
        switch self {
        // TODO: add more question formats
        case .capitalCountry:
            return [
                "%@ is the capital of which country?",
                "Which country's capital is %@?",
                "%@ is the capital of:",
                ].randomElement() ?? "%@ is the capital of:"
        case .countryCapital:
            return [
                "What is the capital of %@?",
                "Which one of the following is the capital of %@?",
                "The capital of %@ is:",
                ].randomElement() ?? "The capital of %@ is:"
        case .countryFlag:
            return [
                "Which of the following is the flag of %@?",
                "The flag of %@ is:",
                ].randomElement() ?? "The flag of %@ is:"
        }
    }
}
