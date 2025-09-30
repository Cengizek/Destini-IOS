//
//  ViewController.swift
//  Destini
//
//  Created by Cengiz Ekmekçi on 29.09.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    
    
    @IBOutlet weak var choiceButton1: UIButton!
    
    @IBOutlet weak var choiceButton2: UIButton!
    
    var storyBrain = StoryTime()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateStory()
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
               
            self.storyBrain.nextStory()
            
                self.updateStory()
            }
    }
    
    func updateStory(){
        
        let choices = storyBrain.getChoices()
        choiceButton1.setTitle(choices[0], for: .normal)
        choiceButton2.setTitle(choices[1], for: .normal)
        storyLabel.text = storyBrain.getStoryText()
        
        
        
    }
    

}

