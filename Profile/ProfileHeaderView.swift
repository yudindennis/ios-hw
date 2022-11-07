//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Денис Юдин on 01.11.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    
    let statusLabel = UILabel()
    
    convenience init() {
        self.init(frame: .zero)
        setupSubviews()
    
       
    }
   
    func setupSubviews() {
        let image = UIImageView()
        image.image = UIImage(named: "avatar")
        image.translatesAutoresizingMaskIntoConstraints = false
        addSubview(image)
        image.layer.cornerRadius = 50
        image.clipsToBounds = true
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        
        
        let nameLabel = UILabel()
        addSubview(nameLabel)
        nameLabel.text = "Randall"
        nameLabel.textColor = UIColor.black
        nameLabel.font = .systemFont(ofSize: 18)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        addSubview(statusLabel)
        statusLabel.text = "Waiting for something..."
        statusLabel.textColor = UIColor.gray
        statusLabel.font = .systemFont(ofSize: 14)
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4
        button.setTitle("Show status", for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowRadius = CGFloat(4)
        
       
        
        addSubview(button)
        
        
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            image.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            image.widthAnchor.constraint(equalToConstant: 100),
            image.heightAnchor.constraint(equalToConstant: 100),
                
            nameLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
        
            statusLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
            statusLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -34),
        
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            button.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            button.heightAnchor.constraint(equalToConstant: 50),

        
        ])
    
    }
    @objc func buttonPressed() {
        
        print(statusLabel.text ?? "")
        
    }
}
