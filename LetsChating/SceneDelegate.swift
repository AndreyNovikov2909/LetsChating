//
//  SceneDelegate.swift
//  LetsChating
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit
import Window

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = Builder.build(withWindowScene: windowScene)
    }
}

