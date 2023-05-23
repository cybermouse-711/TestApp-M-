//
//  PersonViewController.swift
//  TestApp
//
//  Created by Елизавета Медведева on 23.05.2023.
//

import UIKit

class PersonViewController: UIViewController {
    let infoAbotPerson = User.showsDataUser()
    
    // MARK: - Outlets
    @IBOutlet var fotoUser: UIImageView!
    
    @IBOutlet var nameUser: UILabel!
    @IBOutlet var surnameUser: UILabel!
    @IBOutlet var companyUser: UILabel!
    @IBOutlet var jobUser: UILabel!
    
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
        showsPerson()
        //fotoUser = UIImageView(image: footoUser)
    }
    
    // MARK: - Metods
    func showsPerson() {
        nameUser.text = infoAbotPerson.person.name
        surnameUser.text = infoAbotPerson.person.surname
        companyUser.text = infoAbotPerson.person.company
        jobUser.text = infoAbotPerson.person.job
    }
    
    
}
    


