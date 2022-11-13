//
//  LoginRouter.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import UIKit

class LoginRouter: LoginRouterProtocol {
    
    func createViewLogin() -> UIViewController {
        let storyboard = UIStoryboard(name: "TMDB", bundle: nil)
        
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "Login") as? LoginViewController else {
            assertionFailure("LoginViewController ha fallado")
            return UIViewController()
        }
        
        let presenter = LoginPresenter()
        presenter.router = self
        viewController.presenter = presenter
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .crossDissolve
        
        return viewController
    }
    
    func showListMoview(view: UIViewController) {
        print("si paso")
    }
    
}
