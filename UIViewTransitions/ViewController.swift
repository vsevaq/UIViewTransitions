//
//  ViewController.swift
//  UIViewTransitions
//
//  Created by Vsevolod Honcharenko on 20.08.2020.
//  Copyright © 2020 Vsevolod Honcharenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jokerView: UIImageView!
    @IBOutlet weak var backView: UIImageView!
    
    var isFlipped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func flipOver(_ sender: UIButton) {
        
        isFlipped = !isFlipped
        let fromView = isFlipped ? backView : jokerView
        let toView = isFlipped ? jokerView : backView
        
        UIView.transition(from: fromView!, to: toView!, duration: 0.5, options: [.curveEaseOut, .transitionFlipFromLeft, .showHideTransitionViews])
    }

}

