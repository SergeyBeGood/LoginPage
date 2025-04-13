//
//  UserInfoViewController.swift
//  LoginPage
//
//  Created by Олеся Берсенёва on 12.04.2025.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        title = "\(user.person.name) \(user.person.surname)"
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.company
        departmentLabel.text = user.person.depatriment
        jobTitleLabel.text = user.person.jobTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userBioVC = segue.destination as? UserBioViewController
        userBioVC?.user = user
    }
}

