//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    var storyNumber = 0
    
    func updateUI() {
        storyLabel.text = storyBrain.stories[storyNumber].title
        choice1Button.setTitle(storyBrain.stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyNumber].choice2, for: .normal)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyNumber = storyBrain.nextStory(userChoice: sender.currentTitle!, storyNumber : storyNumber)
        updateUI()
    }
    
    
    
    
}

