//
//  GameModeSelectionViewController.swift
//  July-28
//
//  Created by Vishal Singh on 29/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

class GameModeSelectionViewController: UIViewController {

    private let availableGameModes: [GameMode] = GameMode.allCases
    @IBOutlet weak var segmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        for (index, gameMode) in availableGameModes.enumerated() {
            segmentedControl.setTitle(gameMode.rawValue.capitalized, forSegmentAt: index)
        }
    }

    @IBAction func segmentedControlValueChanged(_ sender: Any) {
    }
    
    @IBAction func startGameTapped(_ sender: Any) {
        ScoreManager.selectedGameMode = availableGameModes[segmentedControl.selectedSegmentIndex]

        let questionViewController = QuestionTableViewController()
        questionViewController.modalTransitionStyle = .crossDissolve
        present(questionViewController, animated: true, completion: nil)
    }
}
