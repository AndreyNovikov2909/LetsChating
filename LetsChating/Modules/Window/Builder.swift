//
//  Builder.swift
//  Window
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit
import Landing
import ChatRoomLogin

public final class Builder {
    public static func build(withWindowScene windowScene: UIWindowScene) -> UIWindow {
        let window = Window(windowScene: windowScene)
        let router = Router(window: window, subModules: (
            landingModule: Landing.Builder.build,
            loginModule: ChatRoomLogin.Builder.build
        ))
        
        let presenter = Presenter(router: router)
        
        window.presenter = presenter
        
        return window
    }
}
