//
//  InfoViewController.swift
//  TestApp
//
//  Created by Елизавета Медведева on 23.05.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var nameUser: UILabel!
    @IBOutlet var infoUser: UILabel!
    
    // MARK: - Property
    var user: User!
    
    // MARK: - Override metods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        title = "\(user.person.fullName)"
        nameUser.text = user.person.name
        infoUser.text = user.person.info
    }
}


