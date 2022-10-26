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
        
        
        
        
      
//        let barbutton = UINavigationController(rootViewController: PostViewController())
//        barbutton.tabBarItem = UITabBarItem(title: "BUTTON", image: UIImage(systemName: "square.and.arrow.down"), tag: 2)
//
//
//        let barButtonOK = UIBarButtonItem(title: "OK", style: .plain, target: self , action: Selector(("actions:")))
//          navigationItem.rightBarButtonItems = [barButtonOK]
//
//          func action(obj: AnyObject) {
//             //обрабатываете
       
                         
   
        
        
       
            
    
        // Do any additional setup after loading the view.
    
    
       
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    
    

