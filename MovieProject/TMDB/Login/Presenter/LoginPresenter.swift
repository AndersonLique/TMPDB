//
//  LoginPresenter.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import UIKit

class LoginPresenter: LoginPresenterProtocol {
    weak var view: LoginViewProtrocol?
    var router: LoginRouterProtocol?
    
    func goToListMovies(view: UIViewController, user: String) {
        router?.showListMoview(view: view, user: user)
    }
    
}
