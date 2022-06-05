//
//  ViewController.swift
//  Destini
//
//  Created by Shaheem PP on 05/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    var story = StoryMain()

    @IBOutlet weak var destiniLabel: UILabel!
    @IBOutlet weak var op1Btn: UIButton!
    @IBOutlet weak var op2Btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        destiniLabel.text = story.showStoryTitle()
        op1Btn.setTitle(story.showChoice1(), for: .normal)
        op2Btn.setTitle(story.showChoice2(), for: .normal)
    }

    @IBAction func btnClicked(_ sender: UIButton) {
        let senderTitle = sender.currentTitle
        story.getChoice(choice: senderTitle ?? "Nil")
        destiniLabel.text = story.showStoryTitle()
        op1Btn.setTitle(story.showChoice1(), for: .normal)
        op2Btn.setTitle(story.showChoice2(), for: .normal)
    }
    
}

