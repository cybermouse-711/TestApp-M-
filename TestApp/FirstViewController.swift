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
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    
    
    // MARK: - Outlet
    @IBAction func loginInButton() {
    }
    
    @IBAction func loginButton() {
        suggestsAlert(forTextField: "Login:", andMeaning: "")
    }
    
    @IBAction func passwordButton() {
        suggestsAlert(forTextField: "Password:", andMeaning: "")
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
