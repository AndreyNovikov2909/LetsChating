//
//  ChatRoomLoginViewController.swift
//  ChatRoomLogin
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit
import RxSwift

class ChatRoomLoginViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
        
    // MARK: - Viper
    
    private var presenter: Presentation!
    var producer: Presentation.Producer!
    
    // MARK: - Private proprties
    
    private let dispose = DisposeBag()
    
    // MARK: - Object livecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupPresentation()
        setupUI()
    }
}


// MARK: - Setup

private extension ChatRoomLoginViewController {
    func setupUI() {
        avatarImageView.image = UIImage(named: "avatar", in: Bundle(for: ChatRoomLoginViewController.self), with: nil)
        loginButton.setImage(UIImage(named: "start", in: Bundle(for: ChatRoomLoginViewController.self), with: nil), for: .normal)
    }
    
    func setupPresentation() {
        let input = (username: usernameTextField.rx.text.orEmpty.asDriver(),
                     email: emailTextField.rx.text.orEmpty.asDriver(),
                     start: loginButton.rx.tap.asDriver())
        
        presenter = producer(input)
        
        setupBinding()
    }
    
    func setupBinding() {
        presenter.output.isEnableStart.drive(loginButton.rx.isEnabled).disposed(by: dispose)
    }
}
