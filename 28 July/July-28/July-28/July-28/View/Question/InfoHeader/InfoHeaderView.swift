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
    @IBOutlet weak var timerLabel: UILabel!
    let animatioDuration = 0.1
    
    static func loadFromNib() -> InfoHeaderView {
        return Bundle.main.loadNibNamed(String(describing: InfoHeaderView.self), owner: nil, options: nil)![0] as! InfoHeaderView
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.backgroundColor = ScoreManager.backgroundColor1.cgColor
    }

    func setScore(_ score: Int, highScore: Int) {
        scoreLabel.text = "S: \(score)\nHS: \(highScore)"
    }

    func animateResponse(isAnswerCorrect: Bool) {
        UIView.animate(withDuration: animatioDuration) {
            self.layer.backgroundColor = (isAnswerCorrect ? ScoreManager.correctAnswerColor : ScoreManager.incorrectAnswerColor).cgColor
        }
        UIView.animate(withDuration: animatioDuration, delay: animatioDuration * 4, options: [], animations: {
            self.layer.backgroundColor = ScoreManager.backgroundColor1.cgColor
        }, completion: nil)
    }

    func setTime(_ time: Double) {
        timerLabel.text = "\(time)"
        if time == 5.0 {
            blinkTimeLabel()
        }
        if time <= 0 {
            timerLabel.layer.removeAllAnimations()
            timerLabel.alpha = 1.0
            timerLabel.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
    }

    func blinkTimeLabel() {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .curveEaseOut, .autoreverse], animations: {
            self.timerLabel.alpha = 0.2
            self.timerLabel.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }, completion: nil)
    }
}
