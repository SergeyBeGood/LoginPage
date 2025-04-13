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
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = user.login
        passwordTextField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? TabBarController
        tabBarController?.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password") {
                self.passwordTextField.text = ""
            }
            return false
        }
        return true
    }
    
    
    @IBAction func userNameRefreshButtonAction(_ sender: UIButton) {
        showAlert(withTitle: "Tips", andMessage: "Your User Name is \(user.login)")
    }
    
    @IBAction func passwordRefreshButtonAction(_ sender: UIButton) {
        showAlert(withTitle: "Tips", andMessage: "Your password is \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


