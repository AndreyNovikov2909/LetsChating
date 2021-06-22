//
//  Builder.swift
//  ChatRoomLogin
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit
import Utility

public final class Builder {
    public static func build() -> UIViewController {
        let viewController: ChatRoomLoginViewController = UIStoryboard.loadFromStroryboard(bundle: Bundle(for: self))
        
        
        return viewController
    }
}
