//
//  ViewController.swift
//  AnimationApp.V6
//
//  Created by Marat Fakhrizhanov on 04.07.2024.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    
    @IBOutlet weak var runAnimateSpringButton: SpringButton!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var presentLabel: UILabel!
    
    private var animations: [Animation] = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var index = 0
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        let currentAnimation: Animation = animations[index]
       
        if index < animations.count-1 {
            index += 1
        } else {
            index = 0
        }
        
        let nextAnimation = animations[index]
        
        sender.setTitle("Next - \(nextAnimation.preset)", for: .normal)

        animationView.force = currentAnimation.force
        animationView.curve = currentAnimation.curve
        animationView.animation = currentAnimation.preset
        animationView.animate()
        
        forceLabel.text = "\(currentAnimation.force)"
        curveLabel.text = currentAnimation.curve
        presentLabel.text = currentAnimation.preset
        
    }
    

}

