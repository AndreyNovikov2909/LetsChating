//
//  UseCassesFactory.swift
//  UseCasses
//
//  Created by Andrey Novikov on 6/23/21.
//

import Foundation
import ApplicationService

public class UseCassesFactory {
    private static let deploydURL = URL(string: "")!
    private static let chatRoomWebSocketService = ChatRoomWebSocketService(url: deploydURL)
    public static let accountInteractor: AccountInteractor = AccountInteractor(chatRoomService: chatRoomWebSocketService)
}
