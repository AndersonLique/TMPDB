//
//  MovieListEntity.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import Foundation


struct MovieListResponse: Decodable {
    var page: Int
    var results: [DetailMovieResponse]
    var total_pages: Int
}


struct DetailMovieResponse: Decodable {
    var id: Int
    var poster_path: String
    var original_title: String
    var vote_average: Double
    var release_date: String
    var overview: String
}

struct MovieListResponseError: Decodable, Error {
    var success: Bool
    var status_code: Int
    var status_message: String
}


struct MovieListRequest: Encodable {
    var api_key: String
    var page: Int
    
    var dictionary: [String: Any] {
        return ["api_key": api_key,
                "page": page]
    }
    var nsDictionary: NSDictionary {
        return dictionary as NSDictionary
    }
}
