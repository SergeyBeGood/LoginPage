//
//  ViewController.swift
//  LoginPage
//
//  Created by Олеся Берсенёва on 30.03.2025.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomePageViewController
        welcomeVC?.userName = user
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(withTittle: "Invalid login or password", andMessage: "Please, enter correct login and password")
            passwordTextField.text = ""
            
            return false
        }
        return true
    }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func userNameRefreshButtonAction(_ sender: UIButton) {
        showAlert(withTittle: "Tips", andMessage: "Your User Name is \(user)")
    }
    
    @IBAction func passwordRefreshButtonAction(_ sender: UIButton) {
        showAlert(withTittle: "Tips", andMessage: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTittle tittle: String, andMessage message: String) {
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

