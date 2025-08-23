//
//  ViewController.swift
//  LottieBugExample
//
//  Created by YOUNGSUN on 8/23/25.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    private let lottieView = {
        let animationView = LottieAnimationView(name: "loading")
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.loopMode = .loop
        animationView.backgroundBehavior = .continuePlaying
        animationView.contentMode = .scaleAspectFit
        animationView.backgroundColor = .clear
        return animationView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add lottie view
        view.addSubview(lottieView)
        NSLayoutConstraint.activate([
            lottieView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lottieView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        // Play lottie view
        lottieView.play()
    }
}

