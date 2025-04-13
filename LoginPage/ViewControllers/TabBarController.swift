//
//  TabBarController.swift
//  LoginPage
//
//  Created by Олеся Берсенёва on 12.04.2025.
//

import UIKit

final class TabBarController: UITabBarController {
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomePageViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as? UserInfoViewController
                userInfoVC?.user = user
            }
        }
    }
}
