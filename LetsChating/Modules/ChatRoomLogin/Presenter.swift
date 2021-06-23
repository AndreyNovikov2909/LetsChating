//
//  Presenter.swift
//  ChatRoomLogin
//
//  Created by Andrey Novikov on 6/23/21.
//

import Foundation
import Utility
import RxSwift
import RxCocoa

protocol Presentation {
    typealias Input = (username: Driver<String>,
                       email: Driver<String>,
                       start: Driver<Void>)
    
    typealias Output = (isEnableStart: Driver<Bool>, ())
    typealias Producer = (Input) -> Presentation
    
    var input: Input { get set }
    var output: Output { get set }
}


class Preresnter: Presentation {
    
    // MARK: - Nested types
    
    typealias UseCases = (login: (_ username: String, _ email: String) -> Single<Void>, ())
    
    
    // MARK: - Instance proprties
    
    var input: Presentation.Input
    var output: Presentation.Output
    
    // MARK: - Viper
    
    private let router: Routing
    private let useCases: UseCases
    
    // MARK: - Private proprties
    
    private let dispose = DisposeBag()
    
    // MARK: - Init
    
    init(router: Routing, useCases: UseCases, input: Presentation.Input) {
        self.router = router
        self.useCases = useCases
        self.input = input
        self.output = Preresnter.output(input: input)
        
        process()
    }
}


// MARK: - Process

private extension Preresnter {
    func process() {
        input
            .start
            .withLatestFrom(Driver.combineLatest(input.username, input.email))
            .map({ [useCases] (username, email) in
                let result = useCases.login(username, email)
            }).drive()
            .disposed(by: dispose)
    }
}

// MARK: - Ouput

private extension Preresnter {
    static func output(input: Presentation.Input) -> Presentation.Output {
        let isEnableStart = Driver<Bool>.combineLatest(input.username, input.email) { (username, email) -> Bool in
            return username.isValidUsername() && email.isValidEmail()
        }
        
        return (isEnableStart: isEnableStart, ())
    }
}
