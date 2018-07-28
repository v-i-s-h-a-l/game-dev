//
//  ScoreManager.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

struct ScoreManager {
    
    static var selectedGameMode: GameMode = .mixed
    
    static let maxTime: Double = 60.0
    static let stepTime: Double = 0.5

    static let correctAnswerScore: Int = 20
    static let incorrectAnswerScore: Int = -10
    
    static let correctAnswerColor: UIColor = .green
    static let incorrectAnswerColor: UIColor = .red
    static let backgroundColor1: UIColor = .darkGray

    static var highScore: Int {
        get {
            return UserDefaults.standard.integer(forKey: "highScore-\(selectedGameMode.rawValue)")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "highScore-\(selectedGameMode.rawValue)")
        }
    }
    
    static func messageFor(score: Int) -> String {
        if score >= highScore {
            return "Congratulations! Your score, \(score) is now the highest score in this category. :]"
        } else {
            return "Well done! You scored \(score). Highest score in this category is \(highScore). Keep trying harder. :]"
        }
    }
}
