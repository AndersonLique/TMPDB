//
//  MovieListViewController.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import UIKit

class MovieListViewController: UIViewController {

    
    var presenter: MovieListPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        presenter?.getMovieList()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        Spinner.start()
    }

}
