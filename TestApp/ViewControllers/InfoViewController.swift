//
//  InfoViewController.swift
//  TestApp
//
//  Created by Елизавета Медведева on 23.05.2023.
//

import UIKit

class InfoViewController: UIViewController {

    // MARK: - Private property
    private let firstColor = UIColor(
        red: 135/255,
        green: 206/255,
        blue: 250/255,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 240/255,
        green: 248/255,
        blue: 255/255,
        alpha: 1
    )
    
    // MARK: - Override metods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
    }

}


