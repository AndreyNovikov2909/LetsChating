//
//  ChatRoomLoginViewController.swift
//  ChatRoomLogin
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit


class ChatRoomLoginViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
        
    // MARK: - Object livecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}


// MARK: - Setup UI

private extension ChatRoomLoginViewController {
    func setupUI() {
        avatarImageView.image = UIImage(named: "avatar", in: Bundle(for: ChatRoomLoginViewController.self), with: nil)
        loginButton.setImage(UIImage(named: "start", in: Bundle(for: ChatRoomLoginViewController.self), with: nil), for: .normal)
    }
}
