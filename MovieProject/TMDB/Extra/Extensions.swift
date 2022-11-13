//
//  Extensions.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import UIKit

extension RawRepresentable {
    var localizable: String {
        NSLocalizedString(rawValue as! String, comment: "")
    }
}

extension UIViewController {
    func alertView(viewController: UIViewController, title: String, message: String, completionHandler: (() -> ())? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: Alert.cancelButton.localizable, style: .cancel) { action in
            switch action.style {
            case .cancel:
                guard let completionHandler = completionHandler else {
                    return
                }
                completionHandler()
            case .default, .destructive:
                break;
            @unknown default:
                break;
            }
        }
        
        alertController.addAction(cancel)
        viewController.present(alertController, animated: true, completion: nil)
    }
}
