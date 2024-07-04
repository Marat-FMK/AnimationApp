//
//  SpringAnimation.swift
//  AnimationApp.V6
//
//  Created by Marat Fakhrizhanov on 04.07.2024.
//

import Foundation
import SpringAnimation

struct Animation {
    let preset: AnimationPreset
    let curve: AnimationCurve
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> [Animation] {
        let animations =  [
            Animation(preset: .flash, curve:.easeInOutBack , force: 1, duration: 3, delay: 0),
            Animation(preset: .fadeInRight, curve: .easeInOutExpo, force: 1, duration: 3, delay: 0),
            Animation(preset: .zoomIn, curve: .easeOutQuart, force: 1, duration: 5, delay: 0),
            Animation(preset: .squeezeUp, curve: .easeOutSine, force: 1, duration: 5, delay: 0),
            Animation(preset: .slideLeft, curve: .easeInQuad, force: 1, duration: 3, delay: 0)
     ]
        return animations
            }
}
