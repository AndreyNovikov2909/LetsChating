//
//  AccountInteractor.swift
//  UseCasses
//
//  Created by Andrey Novikov on 6/23/21.
//

import Foundation
import RxSwift
import ApplicationService

public final class AccountInteractor {
    
    private let chatRoomService: ChatRoomWebSocketServiceAPI

    init(chatRoomService: ChatRoomWebSocketServiceAPI) {
        self.chatRoomService = chatRoomService
    }
}

public extension AccountInteractor {
    func login(username: String, email: String) -> Single<()>  {
        self.chatRoomService.login(username: username, email: email)
        return Single.create { (single) -> Disposable in
            
            return Disposables.create()
        }
    }
}
