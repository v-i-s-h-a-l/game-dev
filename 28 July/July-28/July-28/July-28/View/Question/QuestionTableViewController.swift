//
//  QuestionTableViewController.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController, PerformsTableViewBasicSetup {
    
    private var currentCountry: Country = .india
    private var currentQuestion: Question!
    private var currentQuestionType: QuestionType = .capitalCountry

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        let cellClassNames = [TextualQuestionTableViewCell.self].map { String(describing: $0) }
        registerNibsNamed(cellClassNames)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        askNextQuestion()
    }
    
    func askNextQuestion() {
        currentCountry = Country.allCases.randomElement() ?? Country.india
        currentQuestionType = QuestionType.allCases.randomElement() ?? QuestionType.capitalCountry

        tableView.reloadSections([0], with: .fade)
    }
    
    func optionSelected(_ option: Int) {
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
