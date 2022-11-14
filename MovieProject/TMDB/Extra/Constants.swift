//
//  Constants.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import Foundation

enum Login: String {
    case username
    case password
    case accessLogin
}

enum Alert: String {
    case titleAlertLogin
    case messageAlertLogin
    case cancelButton
}


enum DefaultKeyTMDB: String, Encodable {
    case urlBase
    case urlImage
    case api_key
}
