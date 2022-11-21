//import UIKit
//
//class ProfileHeaderView: UIView {
//    fileprivate let NavBarPadding = 91
//    fileprivate let profileTitleFontSize = 18
//    fileprivate let profileTextFieldFontSize = 14
//    fileprivate let imageSize = 100
//
//
//
//    var profile: Profile
//
//    var avatarImageView: UIImageView = {
//        let avatarImageView = UIImageView()
//        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
//        return avatarImageView
//    }()
//
//    var fullNameLabel: UILabel = {
//        let fullNameLabel = UILabel()
//        fullNameLabel.textColor = .black
//        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
//        return fullNameLabel
//    }()
//
//    var statusLabel: UILabel = {
//        let statusLabel = UILabel()
//        statusLabel.textColor = .gray
//        statusLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        return statusLabel
//    }()
//
//    var statusTextField: UITextField = {
//        let statusTextField = UITextField()
//        statusTextField.translatesAutoresizingMaskIntoConstraints = false
//        statusTextField.backgroundColor = .white
//        statusTextField.layer.cornerRadius = 12
//        statusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
//        statusTextField.textColor = .black
//        statusTextField.layer.borderColor = UIColor.black.cgColor
//        statusTextField.layer.borderWidth = 1
//
//        let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 40))
//        statusTextField.leftView = paddingView
//        statusTextField.leftViewMode = .always
//
//        return statusTextField
//    }()
//
//    var setStatusButton: UIButton = {
//        let showStatusButton = UIButton()
//        showStatusButton.translatesAutoresizingMaskIntoConstraints = false
//        showStatusButton.layer.cornerRadius = 4
//        showStatusButton.backgroundColor = .blue
//        showStatusButton.setTitleColor(.white, for: .normal)
//        showStatusButton.setTitle("Set status", for: .normal)
//        showStatusButton.layer.shadowOpacity = 0.7
//        showStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
//        showStatusButton.layer.shadowColor = UIColor.black.cgColor
//        showStatusButton.layer.shadowRadius = CGFloat(4)
//
//        return showStatusButton
//    }()
//
//    private var statusText: String = "Waiting for something..."
//
//    public init(profile: Profile, frame: CGRect) {
//        self.profile = profile
//        super.init(frame: frame)
//
//        let image = UIImage(named: profile.imageSrc)
//        avatarImageView.image = image
//
//        fullNameLabel.font = UIFont.systemFont(ofSize: CGFloat(profileTitleFontSize), weight: .bold)
//        fullNameLabel.text = profile.name
//
//        statusLabel.font = UIFont.systemFont(ofSize: CGFloat(profileTextFieldFontSize), weight: .regular)
//        statusLabel.text = profile.state
//
//        addSubviews()
//        drawLayer()
//        activateConstraints()
//        addTargets()
//    }
//
//    private func addSubviews() {
//        addSubview(avatarImageView)
//        addSubview(fullNameLabel)
//        addSubview(statusLabel)
//        addSubview(statusTextField)
//        addSubview(setStatusButton)
//
//    }
//
//    private func activateConstraints() {
//        NSLayoutConstraint.activate([
//            avatarImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
//            avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
//            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
//            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
//
//            fullNameLabel.heightAnchor.constraint(equalToConstant: CGFloat(profileTitleFontSize)),
//            fullNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
//            fullNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
//            fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
//
//            statusLabel.heightAnchor.constraint(equalToConstant: CGFloat(profileTextFieldFontSize)),
//            statusLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
//            statusLabel.bottomAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: -18),
//            statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
//
//            statusTextField.heightAnchor.constraint(equalToConstant: 40),
//            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
//            statusTextField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 16),
//            statusTextField.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
//
//            setStatusButton.heightAnchor.constraint(equalToConstant: 50),
//            setStatusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
//            setStatusButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 16),
//            setStatusButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
//        ])
//    }
//
//    private func drawLayer() {
//        avatarImageView.layer.masksToBounds = true
//        avatarImageView.layer.cornerRadius = CGFloat(imageSize / 2)
//        avatarImageView.layer.borderWidth = 3
//        avatarImageView.layer.borderColor = UIColor.white.cgColor
//    }
//
//    private func addTargets() {
//        setStatusButton.addTarget(self, action: #selector(didTapStatusButton), for: .touchUpInside)
//        statusTextField.addTarget(self, action: #selector(changeProfileState), for: .editingChanged)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    @objc private func printProfileState()
//    {
//        statusLabel.text = profile.state
//        statusLabel.setNeedsDisplay()
//    }
//
//    @objc private func changeProfileState(_ textField: UITextField)
//    {
//        profile.state = (textField.text ?? profile.state)
//    }
//
//    @objc private func didTapStatusButton() {
//        guard let statusTF = statusTextField.text else {return}
//        statusLabel.text = statusTextField.text
//
//        if statusTF.isEmpty {
//            statusTextField.shake()
//        }else{
//            if statusLabel.text == "" {
//                statusLabel.text = statusText
//            }
//            statusTextField.text = ""
//        }
//    }
//}

//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Юлия on 02.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
        setupGestures()
        backgroundColor = .lightGray
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var avatarImagePosition = imageView.layer.position
    private lazy var avatarImageBounds = imageView.layer.bounds
    
    private lazy var avatarView: UIView = {
        let avatarView = UIView()
        avatarView.backgroundColor = .black
        avatarView.isUserInteractionEnabled = false
        avatarView.alpha = 0.0
        avatarView.frame = UIScreen.main.bounds
        avatarView.layer.masksToBounds = true
        avatarView.layer.borderWidth = 3
        avatarView.layer.borderColor = UIColor.white.cgColor
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        
        return avatarView
    }()

    
    private lazy var closeImageButton: UIButton = {
        let closeImageButton = UIButton()
        closeImageButton.setImage(UIImage(systemName: "multiply.circle", withConfiguration: UIImage.SymbolConfiguration(pointSize: 40))?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        closeImageButton.alpha = 0.0
        closeImageButton.clipsToBounds = false
        closeImageButton.addTarget(self, action: #selector(closeImageAction), for: .touchUpInside)
        closeImageButton.isUserInteractionEnabled = false
        
        closeImageButton.translatesAutoresizingMaskIntoConstraints = false

        return closeImageButton
    }()
    
    

    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "avatar")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 55
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.isUserInteractionEnabled = true
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()

    let profileLabele: UILabel = {
        let profileLabel = UILabel()
        profileLabel.text = "Randall"
        profileLabel.font = UIFont.boldSystemFont(ofSize: 18)
        profileLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return profileLabel
    }()

    lazy var statusButton: UIButton = {
        let statusButton = UIButton()
        statusButton.addTarget(self, action: #selector(tapStatusButtonAction), for: .touchUpInside)
        statusButton.translatesAutoresizingMaskIntoConstraints = false
        statusButton.layer.cornerRadius = 4
        statusButton.backgroundColor = .blue
        statusButton.setTitleColor(.white, for: .normal)
        statusButton.setTitle("Set status", for: .normal)
        statusButton.layer.shadowOpacity = 0.7
        statusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        statusButton.layer.shadowColor = UIColor.black.cgColor
        statusButton.layer.shadowRadius = CGFloat(4)
        
        
        return statusButton
    }()

    lazy var statusField: UITextField = {
        let statusField = UITextField()
        statusField.text = "Waiting for something..."
        statusField.textColor = .darkGray
        
        statusField.translatesAutoresizingMaskIntoConstraints = false
        
       return statusField
    }()
    
    var setStatusField: UITextField = {
        let setStatusField = UITextField()
               
        setStatusField.translatesAutoresizingMaskIntoConstraints = false
        setStatusField.backgroundColor = .white
        setStatusField.layer.cornerRadius = 12
        setStatusField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        setStatusField.textColor = .black
        setStatusField.layer.borderColor = UIColor.black.cgColor
        setStatusField.layer.borderWidth = 1
        let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 40))
        setStatusField.leftView = paddingView
        setStatusField.leftViewMode = .always
        
                return setStatusField
    }()
    
    @objc private func closeImageAction() {
        UIView.animate(withDuration: 0.3,
                       delay: 0.0,
                       usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 0.0,
                       options: .curveEaseInOut) {
            self.closeImageButton.alpha = 0
            self.closeImageButton.isUserInteractionEnabled = false
        } completion: { _ in
            UIView.animate(withDuration: 0.5,
                           delay: 0.0) {
                self.avatarView.alpha = 0.0
                self.imageView.layer.position = self.avatarImagePosition
                self.imageView.layer.bounds = self.avatarImageBounds
                self.imageView.layer.cornerRadius = self.imageView.bounds.width / 2
                self.imageView.layer.borderWidth = 3
                self.imageView.isUserInteractionEnabled = true
                self.statusButton.isUserInteractionEnabled = true
                self.statusField.isUserInteractionEnabled = true
                self.layoutIfNeeded()
            }
        }
    }
    
    @objc private func tapStatusButtonAction() {
        if setStatusField.text != "" {
            statusField.text = setStatusField.text
        } else {
            setStatusField.shake()
        }
    }
    
    
// MARK: - Animation
    
    private func setupGestures() {
        let tapAvatarGesture = UITapGestureRecognizer(target: self, action: #selector(tapAvatarAction))
        imageView.addGestureRecognizer(tapAvatarGesture)
    }
    
    @objc func tapAvatarAction() {
        
        self.avatarImagePosition = self.imageView.layer.position
        self.avatarImageBounds = self.imageView.layer.bounds
        
        UIImageView.animate(withDuration: 0.5,
                            animations: {
            self.imageView.layer.position = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY - 70 )
            self.avatarView.alpha = 0.8
            self.imageView.layer.bounds = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
            self.imageView.layer.cornerRadius = 0
            self.imageView.layer.borderWidth = 0
            self.imageView.isUserInteractionEnabled = false
            self.statusButton.isUserInteractionEnabled = false
            self.statusField.isUserInteractionEnabled = false
        },
                            completion: { _ in
            UIImageView.animate(withDuration: 0.3) {
                self.closeImageButton.alpha = 1
                self.closeImageButton.isUserInteractionEnabled = true
                self.layoutIfNeeded()
            }
        })
    }
    
// MARK: - layout

    private func layout() {

        [profileLabele, statusButton, statusField, setStatusField, avatarView, imageView, closeImageButton] .forEach{addSubview($0)}
        
        NSLayoutConstraint.activate([
            
            closeImageButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            closeImageButton.topAnchor.constraint(equalTo: topAnchor),
            
            
//setup image
            
            imageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            imageView.widthAnchor.constraint(equalToConstant: 110),
            imageView.heightAnchor.constraint(equalToConstant: 110),
            
//setup label
            
            profileLabele.topAnchor.constraint(equalTo: self.topAnchor, constant: 27),
            profileLabele.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16),
            profileLabele.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2),
            
// setup button
            
            statusButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            statusButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            statusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            statusButton.heightAnchor.constraint(equalToConstant: 50),
            statusButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            
// setup text
            
            statusField.topAnchor.constraint(equalTo: profileLabele.bottomAnchor, constant: 16),
            statusField.leadingAnchor.constraint(equalTo: profileLabele.leadingAnchor),
            statusField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
//setup textfield
            
            setStatusField.topAnchor.constraint(equalTo: statusField.bottomAnchor, constant: 16),
            setStatusField.leadingAnchor.constraint(equalTo: profileLabele.leadingAnchor),
            setStatusField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            setStatusField.heightAnchor.constraint(equalToConstant: 30)
            ])
    }
}
