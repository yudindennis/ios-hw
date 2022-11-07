//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Денис Юдин on 24.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    
    let profileHeaderView = ProfileHeaderView()
    
    var button1: UIButton = {
        let button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.layer.cornerRadius = 4
        button1.backgroundColor = .blue
        button1.setTitleColor(.white, for: .normal)
        button1.setTitle("New button", for: .normal)
        button1.layer.shadowOpacity = 0.7
        button1.layer.shadowOffset = CGSize(width: 4, height: 4)
        button1.layer.shadowColor = UIColor.black.cgColor
        button1.layer.shadowRadius = CGFloat(4)
        
        return button1
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        view.addSubview(button1)
        
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            button1.heightAnchor.constraint(equalToConstant: 50),
            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
           
        ])
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//
//        profileHeaderView.frame = view.frame
        
 
    }

    

