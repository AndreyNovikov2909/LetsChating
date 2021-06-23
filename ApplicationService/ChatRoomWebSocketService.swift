//
//  ChatRoomWebSocketService.swift
//  ApplicationService
//
//  Created by Andrey Novikov on 6/23/21.
//

import Foundation
import SocketIO

public protocol ChatRoomWebSocketServiceAPI {
    func login(username: String, email: String)
}


public class ChatRoomWebSocketService {
    
    public init() {}
}

// MARK: - ChatRoomWebSocketServiceAPI

extension ChatRoomWebSocketService: ChatRoomWebSocketServiceAPI {
    public func login(username: String, email: String) {
        print("login request recived, username - \(username), email - \(email)")
    }
}
