//
//  PostViewController.swift
//  Navigation
//
//  Created by Денис Юдин on 24.10.2022.
//

import UIKit



class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        struct Post {
            let title: String
            
        }
        let vcTitle = Post(title: "Заголовок поста")
        
        title = vcTitle.title
    
        
        navigationItem.rightBarButtonItem = .init(
            image: .init(systemName: "globe"),
            style: .plain,
            target: self,
            action: #selector(onTap)
        )
    }

    @objc func onTap() {
        let controller = InfoViewController()
        controller.view.backgroundColor = .red
        present(controller, animated: true)
    }
}
        
        
        
        
      
                         
