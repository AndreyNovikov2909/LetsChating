//
//  UIStoryboard + extention.swift
//  Utility
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit

public extension UIStoryboard {
    class func loadFromStroryboard<T: UIViewController>(bundle: Bundle?) -> T {
        let storyboard = UIStoryboard(name: String(describing: T.self), bundle: bundle)
        guard let viewController = storyboard.instantiateViewController(identifier: String(describing: T.self)) as? T  else {
            fatalError("Storyboard, storyboard identifire and view controller should havee same name, name: \(String(describing: T.self))")
        }
        return viewController
    }
}

