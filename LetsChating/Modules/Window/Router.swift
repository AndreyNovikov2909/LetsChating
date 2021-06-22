//
//  Router.swift
//  Window
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit

protocol Routing {
    func routeToLanding()
    func routeToLogin()
}

class Router {
    
    // MARK: - Nested types
    
    typealias SubModules = (landingModule: (@escaping () -> Void) -> UIViewController,
                            loginModule: () -> UIViewController)
    
    // MARK: - Private proprties
    
    private let subModules: SubModules
    private unowned var window: UIWindow
    
    // MARK: - Init
    
    init(window: UIWindow, subModules: SubModules) {
        self.window = window
        self.subModules = subModules
    }
}

// MARK: - Routing

extension Router: Routing {
    func routeToLanding() {
        let landingViewController = subModules.landingModule { [weak self] in
            self?.routeToLogin()
        }
        
        window.rootViewController = landingViewController
        window.makeKeyAndVisible()
    }
    
    func routeToLogin() {
        window.rootViewController = subModules.loginModule()
    }
}
