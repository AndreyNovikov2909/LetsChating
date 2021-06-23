//
//  Router.swift
//  ChatRoomLogin
//
//  Created by Andrey Novikov on 6/23/21.
//

import UIKit

protocol Routing {
    
}


class Router {

    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}


// MARK: - Routing

extension Router: Routing {
    
}
