//
//  LoginProtocol.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import UIKit

// MARK: View
protocol LoginViewProtrocol: AnyObject {
    var presenter: LoginPresenterProtocol? { get set }
}

// MARK: Presenter
protocol LoginPresenterProtocol: AnyObject {
    var view: LoginViewProtrocol? { get set }
    var router: LoginRouterProtocol? { get set }
    
    func goToListMovies(view: UIViewController)
    
}

// MARK: Router
protocol LoginRouterProtocol: AnyObject {
    func createViewLogin() -> UIViewController
    func showListMoview(view: UIViewController)
}
