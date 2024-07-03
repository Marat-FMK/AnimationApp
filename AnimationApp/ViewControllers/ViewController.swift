//
//  ViewController.swift
//  AnimationApp
//
//  Created by Marat Fakhrizhanov on 03.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coreAminationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    var animationSterted = false

    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        
        UIView.animate(withDuration: 5, delay: 0, options: [.autoreverse, .repeat]) {
            
            if !self.animationSterted{
                self.coreAminationView.frame.origin.x -= 60
                self.animationSterted.toggle()
            }
        }
        

    }
    
}

