//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Денис Юдин on 24.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    
    let profileHeaderView = ProfileHeaderView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileHeaderView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//
//        profileHeaderView.frame = view.frame
        
 
    }
    
//    func setupSubviews() {
//        let image = UIImageView()
//        image.image = UIImage(named: "avatar")
//        image.translatesAutoresizingMaskIntoConstraints = false
//        self.view.addSubview(image)
//        image.layer.cornerRadius = 50
//        image.clipsToBounds = true
//        image.layer.borderWidth = 3
//        image.layer.borderColor = UIColor.white.cgColor
//
//
//        let nameLabel = UILabel()
//        self.view.addSubview(nameLabel)
//        nameLabel.text = "Randall"
//        nameLabel.textColor = UIColor.gray
//        nameLabel.font = .systemFont(ofSize: 18)
//        nameLabel.translatesAutoresizingMaskIntoConstraints = false
//
//
//        let statusLabel = UILabel()
//        self.view.addSubview(statusLabel)
//        statusLabel.text = "Waiting for something..."
//        statusLabel.textColor = UIColor.gray
//        statusLabel.font = .systemFont(ofSize: 14)
//        statusLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = .blue
//        button.layer.cornerRadius = 4
//        button.setTitle("Show status", for: .normal)
//
//        view.addSubview(button)
//
//
//        NSLayoutConstraint.activate([
//            image.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
//            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
//            image.widthAnchor.constraint(equalToConstant: 100),
//            image.heightAnchor.constraint(equalToConstant: 100),
//
//            nameLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
//            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 27),
//
//            statusLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
//            statusLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -34),
//
//            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
//            button.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16),
//            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
//            button.heightAnchor.constraint(equalToConstant: 50)
//        ])
        
    

