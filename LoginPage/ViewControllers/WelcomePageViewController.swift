//
//  WellcomePageViewController.swift
//  LoginPage
//
//  Created by Олеся Берсенёва on 03.04.2025.
//

import UIKit

final class WelcomePageViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var personNameLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        userNameLabel.text = "Welcome, \(user.login)!"
        personNameLabel.text = "My name is \(user.person.name) \(user.person.surname)."
    }
}

