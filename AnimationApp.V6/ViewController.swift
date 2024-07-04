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
    
    @IBOutlet weak var innerView: SpringLabel!
    @IBOutlet weak var runAnimateSpringButton: SpringButton!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var presentLabel: UILabel!
    
    private var animations: [Animation] = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // runSpringAnimation(runAnimateSpringButton) // run this method if you need to set the values immediatel
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
        
        sender.setTitle("Next - \(nextAnimation.preset.rawValue)", for: .normal)
        
        sender.force = nextAnimation.force
        sender.curve = nextAnimation.curve.rawValue
        sender.animation = nextAnimation.preset.rawValue
        sender.animate()
        
        innerView.force = nextAnimation.force
        innerView.curve = nextAnimation.curve.rawValue
        innerView.animation = nextAnimation.preset.rawValue
        innerView.delay = 3
        innerView.animate()
        
        animationView.force = currentAnimation.force
        animationView.curve = currentAnimation.curve.rawValue
        animationView.animation = currentAnimation.preset.rawValue
        animationView.animate()
        
        forceLabel.text = "\(currentAnimation.force)"
        curveLabel.text = currentAnimation.curve.rawValue
        presentLabel.text = currentAnimation.preset.rawValue
    }
}

