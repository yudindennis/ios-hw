//
//  FeedViewController.swift
//  Navigation
//
//  Created by Денис Юдин on 24.10.2022.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        let uiButton = UIButton()
        self.view.addSubview(uiButton)
        uiButton.setTitle("Пост", for: .normal)
        uiButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        uiButton.addAction(UIAction(handler: {_ in
            let vc = PostViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            uiButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            uiButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            uiButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            uiButton.heightAnchor.constraint(equalToConstant: 30)])
        
       
        }
            
    @objc private func tapAction() {
         let postVC = PostViewController()
        postVC.navigationItem.title = post.title
       
        navigationController?.pushViewController(postVC, animated: true)
    }
    let post = Post(title: "Post")

        

    }
    


