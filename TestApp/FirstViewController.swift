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
    

}

// MARK: - UIAlertController
extension FirstViewController {
    private func suggestsAlert(forTextField text: String, andMeaning meaning: String) {
        let alert = UIAlertController(title: text, message: meaning, preferredStyle: .alert)
        let action = UIAlertAction(title: "CLOSE", style: .default) { _ in
            self.paswordTF.text = ""
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
}

