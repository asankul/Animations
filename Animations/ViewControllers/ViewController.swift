//
//  ViewController.swift
//  Animations
//
//  Created by Асанкул Садыков on 5/8/22.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var nameOfPreset: UILabel!
    @IBOutlet var nameOfCurve: UILabel!
    @IBOutlet var forceAmount: UILabel!
    @IBOutlet var durationAmount: UILabel!
    @IBOutlet var delayAmount: UILabel!

    @IBOutlet var buttonName: UIButton!
    
    var animation = Animation.getAnimation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }
    
    private func setLabels() {
        nameOfPreset.text = animation.preset
        nameOfCurve.text = animation.curve
        forceAmount.text = String(format: "%.2f", animation.force)
        durationAmount.text = String(format: "%.2f", animation.duration)
        delayAmount.text = String(format: "%.2f", animation.delay)
    }
    
    private func setAnimationOptions() {
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
    }

    @IBAction func runButtonPressed(_ sender: UIButton) {
        setLabels()
        setAnimationOptions()
        animationView.animate()
        animation = Animation.getAnimation()
        buttonName.setTitle("RUN \(animation.preset)", for: .normal)
    }
}

