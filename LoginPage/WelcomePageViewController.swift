//
//  WellcomePageViewController.swift
//  LoginPage
//
//  Created by Олеся Берсенёва on 03.04.2025.
//

import UIKit

final class WelcomePageViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
    }
}
