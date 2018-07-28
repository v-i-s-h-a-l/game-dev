//
//  QuestionTableViewController.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController, PerformsTableViewBasicSetup {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        let cellClassNames = [TextualQuestionTableViewCell.self].map { String(describing: $0) }
        registerNibsNamed(cellClassNames)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let textualQuestionCell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextualQuestionTableViewCell.self), for: indexPath)
        
        return textualQuestionCell
    }
}
