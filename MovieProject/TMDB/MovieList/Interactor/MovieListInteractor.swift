//
//  MovieListInteractor.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import Foundation
import Alamofire

class MovieListInteractor {
    
    func getList(page: Int, _ completion: @escaping (Result<MovieListResponse, AFError>) -> Void) {
        
        AF.request(
            "\(DefaultKeyTMDB.urlBase.localizable+"1")/movie/upcoming",
            method: .get,
            parameters: MovieListRequest(api_key: DefaultKeyTMDB.api_key.localizable, page: page).dictionary,
            encoding: URLEncoding(destination: .queryString)).responseDecodable(of: MovieListResponse.self) { response in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                print(error.responseContentType)
//                completion(.failure(error))
            }
        }
    }
}
