//
//  SecondViewController.swift
//  TestApp
//
//  Created by Елизавета Медведева on 18.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var welcomeUser: UILabel!
    
    // MARK: - Property
    var user: User!
    
    // MARK: - Override metods
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = """
Добро пожаловать
\(user.person.fullName)!
"""
        view.addVerticalGradientLayer()
    }
}

// MARK: - Extension
extension UIView {
    func addVerticalGradientLayer() {
        let firstColor = UIColor(
            red: 135/255,
            green: 206/255,
            blue: 250/255,
            alpha: 1
        )
        
        let secondColor = UIColor(
            red: 240/255,
            green: 248/255,
            blue: 255/255,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
