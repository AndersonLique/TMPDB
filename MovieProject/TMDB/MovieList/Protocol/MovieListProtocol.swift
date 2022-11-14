//
//  MovieListProtocol.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import UIKit

// MARK: View
protocol MovieListViewProtrocol: AnyObject {
    var presenter: MovieListPresenterProtocol? { get set }
}

// MARK: Presenter
protocol MovieListPresenterProtocol: AnyObject {
    var view: MovieListViewProtrocol? { get set }
    var router: MovieListRouterProtocol? { get set }
    
    func getMovieList()
    
}

// MARK: Router
protocol MovieListRouterProtocol: AnyObject {
    func createMovieList(user: String) -> UIViewController
    
}
