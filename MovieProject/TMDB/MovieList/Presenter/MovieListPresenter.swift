//
//  MovieListPresenter.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import Foundation

class MovieListPresenter: MovieListPresenterProtocol {
    
    weak var view: MovieListViewProtrocol?
    var router: MovieListRouterProtocol?
    
    func getMovieList() {
        MovieListInteractor().getList(page: 1) { response in
            
            switch response {
            case .success(let list):
                print(list)
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
    }
    
}
