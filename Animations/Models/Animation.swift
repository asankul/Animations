//
//  Animation.swift
//  Animations
//
//  Created by Асанкул Садыков on 5/8/22.
//

import SpringAnimation
import UIKit

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation()-> Animation {
        
        Animation(
            preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: CGFloat.random(in: 0.1...2),
            duration: CGFloat.random(in: 0.1...2),
            delay: CGFloat.random(in: 0.1...2)
        )

    }
}
