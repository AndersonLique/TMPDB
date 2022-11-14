//
//  MovieListRouter.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import UIKit


class MovieListRouter: MovieListRouterProtocol {
    
    func createMovieList(user: String) -> UIViewController {
        let storyboard = UIStoryboard(name: "TMDB", bundle: nil)
        
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "MovieList") as? MovieListViewController else {
            assertionFailure("MovieListViewController ha fallado")
            return UIViewController()
        }
        
        let presenter = MovieListPresenter()
        presenter.router = self
        viewController.presenter = presenter
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .crossDissolve
        
        return viewController
    }
    
}

