//
//  ViewController.swift
//  GMColor
//
//  Created by Todsaporn Banjerdkit (katopz) on 12/19/14.
//  Copyright (c) 2014 Debokeh. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Basic : Set view background to Blue 500
        self.view.backgroundColor = GMColor.blue500Color()

        // Advance : Change view background color randomly with animation
        self.randomlyChangeViewBackgroudColorWithAnimation()

    }

    func getRandomColorFromPalette() -> UIColor {
        let palettes = GMPalette.all()
        let colors = palettes[Int(arc4random_uniform(UInt32(palettes.count)))]
        return colors[Int(arc4random_uniform(UInt32(colors.count)))]
    }

    func randomlyChangeViewBackgroudColorWithAnimation() {
        UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut,
                animations: {
                    self.view.backgroundColor = self.getRandomColorFromPalette()
                },
                completion: {
                    (complete: Bool) in
                    self.randomlyChangeViewBackgroudColorWithAnimation();
                    return
                })
    }
}
