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
        view.backgroundColor = .lightGray
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
            
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


