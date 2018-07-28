//
//  ViewController.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green

        addInfoButton()
    }
    
    fileprivate func addInfoButton() {
        let button = UIButton(type: .infoDark)
        button.addTarget(self, action: #selector(infoButtonTapped(sender:)), for: .touchUpInside)
        button.center = view.center
        view.addSubview(button)
    }
    
    @IBAction func infoButtonTapped(sender: Any) {
        
    }
}

