//
//  Builder.swift
//  Landing
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit
import Utility

public final class Builder {
    static public func build(onStart: @escaping () -> Void) -> UIViewController {
        let viewController: LandingViewController = UIStoryboard.loadFromStroryboard(bundle: Bundle(for: self))
        viewController.onStart = {
            onStart()
        }
        
        return viewController
    }
}
