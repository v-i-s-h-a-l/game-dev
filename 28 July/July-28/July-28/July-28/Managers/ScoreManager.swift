//
//  ScoreManager.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import Foundation

struct ScoreManager {
    
    static let maxTime: Double = 60.0
    static let stepTime: Double = 0.5

    static let correctAnswerScore: Int = 20
    static let incorrectAnswerScore: Int = -10
    static var highScore: Int {
        get {
            return UserDefaults.standard.integer(forKey: "highScore")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "highScore")
        }
    }
    
    static func messageFor(score: Int) -> String {
        if score >= highScore {
            return "Congratulations! Your score, \(score) is now the highest score. :]"
        } else {
            return "Well done! You scored \(score). Highest score is \(highScore). Keep trying harder. :]"
        }
    }
}
