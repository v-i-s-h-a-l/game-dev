//
//  InfoHeaderView.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

class InfoHeaderView: UITableViewHeaderFooterView {

    @IBOutlet weak var scoreLabel: UILabel!
    let animatioDuration = 0.1
    
    static func loadFromNib() -> InfoHeaderView {
        return Bundle.main.loadNibNamed(String(describing: InfoHeaderView.self), owner: nil, options: nil)![0] as! InfoHeaderView
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.backgroundColor = UIColor.darkGray.cgColor
    }

    func setScore(_ score: Int, highScore: Int) {
        scoreLabel.text = "S: \(score)\nHS: \(highScore)"
    }

    func animateResponse(isAnswerCorrect: Bool) {
        UIView.animate(withDuration: animatioDuration) {
            self.layer.backgroundColor = (isAnswerCorrect ? UIColor.green : UIColor.red).cgColor
        }
        UIView.animate(withDuration: animatioDuration, delay: animatioDuration * 4, options: [], animations: {
            self.layer.backgroundColor = UIColor.darkGray.cgColor
        }, completion: nil)
    }
}
