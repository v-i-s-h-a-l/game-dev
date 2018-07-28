//
//  QuestionTableViewController.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit
import GameplayKit

class QuestionTableViewController: UITableViewController, PerformsTableViewBasicSetup {    
    
    private var currentCountry: Country = .india
    private var currentQuestion: Question!
    private var currentQuestionType: QuestionType = .capitalCountry
    private var score: Int = 0 {
        didSet {
            if score < 0 {
                score = 0
            }
            if score > highScore {
                highScore = score
            }
            infoHeaderView.setScore(score, highScore: highScore)
        }
    }
    private var highScore: Int = ScoreManager.highScore {
        didSet {
            ScoreManager.highScore = highScore
        }
    }
    private var timeRemaining: Double = ScoreManager.maxTime {
        didSet {
            infoHeaderView.setTime(timeRemaining)
        }
    }
    
    private lazy var infoHeaderView: InfoHeaderView = InfoHeaderView.loadFromNib()
    private lazy var timer: Timer = Timer.scheduledTimer(withTimeInterval: ScoreManager.stepTime, repeats: true, block: stepTimer)

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        view.backgroundColor = .darkGray
        let cellClassNames = [TextualQuestionTableViewCell.self].map { String(describing: $0) }
        registerCellNibsNamed(cellClassNames)
        addInfoHeaderView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        askNextQuestion()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        timer.fire()
    }
    
    private func addInfoHeaderView() {
        tableView.tableHeaderView = infoHeaderView
        infoHeaderView.setScore(0, highScore: highScore)
    }
    
    func stepTimer(_ timer: Timer) {
        timeRemaining -= ScoreManager.stepTime
        if timeRemaining <= 0.0 {
            onTimeOver()
        }
    }
    
    func askNextQuestion() {
        let allCountries = Country.allCases
        let sharedRanom = GKRandomSource.sharedRandom()
        let randomIndex = sharedRanom.nextInt(upperBound: allCountries.count - 1)
        currentCountry = (sharedRanom.arrayByShufflingObjects(in: allCountries) as! [Country])[randomIndex]
        
        currentQuestionType = QuestionType.allCases.randomElement() ?? QuestionType.capitalCountry

        tableView.reloadSections([0], with: .fade)
    }
    
    func optionSelected(_ option: Int) {
        let isAnswerCorrect = option == currentQuestion.correctOptionIndex
        infoHeaderView.animateResponse(isAnswerCorrect: isAnswerCorrect)
        score += isAnswerCorrect ? ScoreManager.correctAnswerScore : ScoreManager.incorrectAnswerScore
        
        askNextQuestion()
    }
    
    func onTimeOver() {
        timer.invalidate()
        timeRemaining = 0.0
        // Show finished alert
        let restartAction = UIAlertAction(title: "Restart", style: .default) { _ in
            self.reset()
        }
        let goBackAction = UIAlertAction(title: "Go back", style: .destructive) { _ in
            self.dismiss(animated: true, completion: nil)
        }
        showAlertWith(title: "Time's Up!!", message: ScoreManager.messageFor(score: score), actions: [goBackAction, restartAction])
    }
    
    private func reset() {
        score = 0
        timeRemaining = ScoreManager.maxTime + ScoreManager.stepTime
        timer = Timer.scheduledTimer(withTimeInterval: ScoreManager.stepTime, repeats: true, block: stepTimer)
        timer.fire()
        askNextQuestion()
    }
    
    // MARK: - Table View -

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let textualQuestionCell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextualQuestionTableViewCell.self), for: indexPath) as! TextualQuestionTableViewCell
        let viewModel = QuestionManager.textualQuestionWith(currentCountry, questionType: currentQuestionType)
        textualQuestionCell.configureWith(viewModel: viewModel)
        currentQuestion = viewModel
        
        textualQuestionCell.onOptionSelected = optionSelected
        
        return textualQuestionCell
    }
}
