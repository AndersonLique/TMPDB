//
//  Spinner.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import UIKit

class Spinner {
    internal static var spinner: UIActivityIndicatorView?
    
    static func start() {
        let keyWindow = UIApplication.shared.connectedScenes
                .filter({$0.activationState == .foregroundActive})
                .compactMap({$0 as? UIWindowScene})
                .first?.windows
                .filter({$0.isKeyWindow}).first
        if spinner == nil, let window = keyWindow {
            let frame = UIScreen.main.bounds
            spinner = UIActivityIndicatorView(frame: frame)
            spinner!.backgroundColor = .white
            spinner!.style = .large
            spinner?.color = .gray
            window.addSubview(spinner!)
            spinner!.startAnimating()
        }
    }
    
    static func stop() {
        if spinner != nil {
            spinner!.stopAnimating()
            spinner!.removeFromSuperview()
            spinner = nil
        }
    }
}
