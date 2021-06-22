//
//  Builder.swift
//  Window
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit

public final class Builder {
    public static func build(withWindowScene windowScene: UIWindowScene) -> UIWindow {
        let window = Window(windowScene: windowScene)
        let router = Router()
        let presenter = Presenter(router: router)
        
        window.presenter = presenter
        
        return window
    }
    
}
