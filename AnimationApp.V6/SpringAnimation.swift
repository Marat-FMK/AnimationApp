//
//  SpringAnimation.swift
//  AnimationApp.V6
//
//  Created by Marat Fakhrizhanov on 04.07.2024.
//

import Foundation
import SpringAnimation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> [Animation] {
        let animations =  [
            Animation(preset: "squeezeDown", curve: "linear", force: 1, duration: 3, delay: 0),
            Animation(preset: "flash", curve: "easeIn", force: 1, duration: 3, delay: 0),
            Animation(preset: "morph", curve: "easeInOutExpo", force: 1, duration: 3, delay: 0),
            Animation(preset: "flipX", curve: "easeInCubic", force: 1, duration: 3, delay: 0),
            Animation(preset: "swing", curve: "easeToExpo", force: 1, duration: 3, delay: 0)
     ]
        return animations
            }
}
