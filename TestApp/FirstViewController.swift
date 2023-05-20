//
//  ViewController.swift
//  TestApp
//
//  Created by Елизавета Медведева on 18.05.2023.
//

import UIKit

final class FirstViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var paswordTF: UITextField!
    
    // MARK: - Property
    private let userName = "Liza"
    private let userPassword = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Metods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.welcome = userName
    }
    
   /*
    override func touchesBegan(_ touches: Set<Element: Hashable>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    } */

    
    // MARK: - Actions
    @IBAction func loginInButton() {
        guard loginTF.text == userName && paswordTF.text == userPassword else {
            warrningAlert(forTitle: "Неверный логин или пароль", andText: "Попробуйте ввести снова")
            return
        }
    }
    
    @IBAction func loginButton() {
        suggestsAlert(forTextField: "Login:", andMeaning: "\(userName)")
    }
    
    @IBAction func passwordButton() {
        suggestsAlert(forTextField: "Password:", andMeaning: "\(userPassword)")
    }
    
    @IBAction func unwaid(for segue: UIStoryboardSegue){
        guard let _ = segue.source as? SecondViewController else { return }
        loginTF.text = ""
        paswordTF.text = ""
    }
    
}

// MARK: - UIAlertControllers
extension FirstViewController {
    private func suggestsAlert(forTextField text: String, andMeaning meaning: String) {
        let alert = UIAlertController(title: text, message: meaning, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
}

extension FirstViewController {
    private func warrningAlert(forTitle title: String, andText text: String) {
        let warningAlert = UIAlertController(title: title, message: text, preferredStyle: .alert)
        let action = UIAlertAction(title: "CLOSE", style: .destructive) { _ in
            self.paswordTF.text = ""
        }
        warningAlert.addAction(action)
        present(warningAlert, animated: true)
    }
}
