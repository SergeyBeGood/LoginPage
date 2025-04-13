//
//  UserBioViewController.swift
//  LoginPage
//
//  Created by Олеся Берсенёва on 12.04.2025.
//

import UIKit

final class UserBioViewController: UIViewController {

    @IBOutlet var userBioTextView: UITextView!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        title = "\(user.person.name) \(user.person.surname) Bio"
        userBioTextView.backgroundColor = .clear
        userBioTextView.textColor = .white
        userBioTextView.text = user.person.biography
    }
}
