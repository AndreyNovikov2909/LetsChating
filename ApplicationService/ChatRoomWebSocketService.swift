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
    
    // MARK: - Private propoerties
    
    private var socketManager: SocketManager!
    private var socket: SocketIOClient!
    private let socketURL: URL
    
    // MARK: - Object livecycle
    
    public init(url: URL) {
        socketURL = url
        setup(usingURL: url)
    }
    
    deinit {
        socket.disconnect()
    }
}

// MARK: - ChatRoomWebSocketServiceAPI

extension ChatRoomWebSocketService: ChatRoomWebSocketServiceAPI {
    public func login(username: String, email: String) {
        print("login request recived, username - \(username), email - \(email)")
        socket.emit("login", [username, email])
    }
}

extension ChatRoomWebSocketService {
    func setup(usingURL url: URL) {
        socketManager = SocketManager(socketURL: url)
        socket = socketManager.defaultSocket
        socket.connect()
    }
}
