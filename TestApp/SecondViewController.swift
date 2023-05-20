//
//  SecondViewController.swift
//  TestApp
//
//  Created by Елизавета Медведева on 18.05.2023.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Outlet
    @IBOutlet var welcomeUser: UILabel!
    
    // MARK: - Property
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = "Welcome \(String(describing: welcome))!"
    }
}
