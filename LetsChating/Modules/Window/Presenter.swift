//
//  Presenter.swift
//  Window
//
//  Created by Andrey Novikov on 6/22/21.
//

import Foundation

protocol Presentation {
    
}

class Presenter {
    private let router: Routing
    
    init(router: Routing) {
        self.router = router
    }
}

// MARK: - Presentation

extension Presenter: Presentation {
    
}
