//
//  ViewController.swift
//  TestApp
//
//  Created by Елизавета Медведева on 18.05.2023.
//

import UIKit

final class FirstViewController: UIViewController {
    
    // MARK: - Outlet
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var paswordTF: UITextField!
    
    private let userName = "Liza"
    private let userPassword = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Metods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let _ = segue.destination as? SecondViewController else { return }
    }
    
    
    override func touchesBegan(_ touches: Set, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }

    
    // MARK: - Outlet
    @IBAction func loginInButton() {
       /* guard let userLogin = loginTF.text, userPassword = paswordTF.text else {
            warrningAlert(forTitle: "Неверный логин или пароль", andText: "Попробуйте ввести снова")
            return
        } */
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

// MARK: - UIAlertController
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