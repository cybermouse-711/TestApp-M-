//
//  ViewController.swift
//  TestApp
//
//  Created by Елизавета Медведева on 18.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    let infoAbotPerson = User.showsDataUser()
    
    // MARK: - Outlets
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var paswordTF: UITextField!
    
    // MARK: - Override metods
    
    override func viewDidLoad() {
        loginTF.text = infoAbotPerson.loginUser
        paswordTF.text = infoAbotPerson.passwordUser
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcome = infoAbotPerson.loginUser
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
     }
    
    // MARK: - Actions
    @IBAction func loginInButton() {
        guard loginTF.text == infoAbotPerson.loginUser,
                paswordTF.text == infoAbotPerson.passwordUser
        else {
            warrningAlert(
                forTitle: "Неверный логин или пароль",
                andText: "Попробуйте ввести снова"
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func userData(_ sender: UIButton) {
        sender.tag == 0
            ? warrningAlert(forTitle: "Wrong!", andText: "Имя пользователя: \(infoAbotPerson.loginUser)")
            : warrningAlert(forTitle: "Wrong!", andText: "Пароль пользователя: \(infoAbotPerson.passwordUser)")
    }
    
    @IBAction func unwaid(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        paswordTF.text = ""
    }
    
    // MARK: - UIAlertControllers
    private func warrningAlert(forTitle: String, andText: String, textField: UITextField? = nil) {
        let warningAlert = UIAlertController(
            title: forTitle,
            message: andText,
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "Close", style: .destructive) { _ in
            textField?.text = ""
        }
        warningAlert.addAction(action)
        present(warningAlert, animated: true)
    }
}


