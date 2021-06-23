//
//  Builder.swift
//  ChatRoomLogin
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit
import Utility
import UseCasses

public final class Builder {
    public static func build() -> UIViewController {
        let viewController: ChatRoomLoginViewController = UIStoryboard.loadFromStroryboard(bundle: Bundle(for: self))
        let router = Router(viewController: viewController)
        
        viewController.producer = { input in
            let useCases = (login: UseCassesFactory.accountInteractor.login, ())
            let presenter = Preresnter(router: router, useCases: useCases, input: input)
            
            return presenter
        }
        
        return viewController
    }
}
