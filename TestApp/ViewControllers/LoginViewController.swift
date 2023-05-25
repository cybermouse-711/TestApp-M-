//
//  ViewController.swift
//  TestApp
//
//  Created by Елизавета Медведева on 18.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var paswordTF: UITextField!
    
    // MARK: - Private
    private let user = User.showsDataUser()
    
    // MARK: - Override metods
    override func viewDidLoad() {
        loginTF.text = user.login
        paswordTF.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {
            return
        }
        
        guard let viewConrollers = tabBarController.viewControllers else {
            return
        }
        
        viewConrollers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigatoiVC = $0 as? UINavigationController {
                let infoUserVC = navigatoiVC.topViewController
                guard let infoUserVC = infoUserVC as? PersonViewController else {
                    return
                }
                infoUserVC.user = user
            }
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
     }
    
    // MARK: - Actions
    @IBAction func loginInButton() {
        guard loginTF.text == user.login,
                paswordTF.text == user.password
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
            ? warrningAlert(forTitle: "Wrong!", andText: "Имя пользователя: \(user.login)")
            : warrningAlert(forTitle: "Wrong!", andText: "Пароль пользователя: \(user.password)")
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


