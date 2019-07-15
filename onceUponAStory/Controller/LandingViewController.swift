//
//  ViewController.swift
//  onceUponAStory
//
//  Created by Roser Reverte Avila on 08/07/2019.
//  Copyright © 2019 Roser Reverte Avila. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {
    
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setGradientLayer()
    }
    
    func setGradientLayer() {
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        let firstColor = UIColor(red: 0.42, green: 0.72, blue: 0.94, alpha: 1.0)
        let secondColor = UIColor(red: 0.32, green: 0.2, blue: 0.92, alpha: 1.0)
        layer.colors = [firstColor.cgColor, secondColor.cgColor]
        layer.startPoint = CGPoint(x:0, y:0.5)
        layer.endPoint = CGPoint(x:0.5, y:1)
        gradientView.layer.addSublayer(layer)
    }
}
