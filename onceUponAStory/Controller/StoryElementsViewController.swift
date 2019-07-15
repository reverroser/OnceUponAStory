//
//  StoryElementsViewController.swift
//  onceUponAStory
//
//  Created by Roser Reverte Avila on 14/07/2019.
//  Copyright © 2019 Roser Reverte Avila. All rights reserved.
//

import Foundation
import UIKit

class StoryElementsViewController: UIViewController {
    
    @IBOutlet weak var character1: UILabel!
    @IBOutlet weak var character2: UILabel!
    @IBOutlet weak var place: UILabel!
    @IBOutlet weak var object: UILabel!
    @IBOutlet weak var action: UILabel!

    let storyElementsModel = StoryElementsModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initStory()
    }
    
    func initStory() {
        let storyElements = storyElementsModel.getStoryElements()

        character1.text = storyElements.character1
        character2.text = storyElements.character2
        place.text = storyElements.place
        object.text = storyElements.object
        action.text = storyElements.action
    }

    @IBAction func refresh(_ sender: Any) {
        initStory()
    }
}
