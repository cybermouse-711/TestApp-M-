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
    @IBOutlet var fotoUser: UIImageView! {
        didSet {
            fotoUser.layer.cornerRadius = fotoUser.frame.height / 2
        }
    }
    
    @IBOutlet var nameUser: UILabel!
    @IBOutlet var surnameUser: UILabel!
    @IBOutlet var companyUser: UILabel!
    @IBOutlet var jobUser: UILabel!
    
    // MARK: - Property
    var user: User!
    
    // MARK: - Override metods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        title = "\(user.person.fullName)"
        fotoUser.image = UIImage(named: user.person.foto)
        nameUser.text = user.person.name
        surnameUser.text = user.person.surname
        companyUser.text = user.person.job.company
        jobUser.text = user.person.job.job
    }
    
    // MARK: - Metods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personVC = segue.destination as? InfoViewController else { return }
        personVC.user = user
    }

}
    


