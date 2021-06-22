//
//  LandingViewController.swift
//  Landing
//
//  Created by Andrey Novikov on 6/22/21.
//

import UIKit

class LandingViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var applicationNameLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    var onStart: (() -> Void)?
    
    // MARK: - Object livecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    // MARK: - IBActions
    
    @IBAction func startButtonTapped(_ sender: Any) {
        onStart?()
    }
}


// MARK: - Setup UI

private extension LandingViewController {
    func setupUI() {
        logoImageView.image = UIImage(named: "logo", in: Bundle(for: LandingViewController.self), with: nil)
        startButton.setImage(UIImage(named: "start", in: Bundle(for: LandingViewController.self), with: nil), for: .normal)
    }
}
