//
//  InfoViewController.swift
//  Navigation
//
//  Created by Денис Юдин on 26.10.2022.
//

import UIKit

class InfoViewController: UIViewController {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let uiButton = UIButton()
        self.view.addSubview(uiButton)
        uiButton.setTitle("Кнопка", for: .normal)
        uiButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        uiButton.addAction(UIAction(handler: {_ in
            let alert = UIAlertController(title: "Вопрос", message: "Как дела?", preferredStyle: .alert)
            
            
            alert.addAction(UIAlertAction(title: "Хорошо", style: .default, handler: { action in
                print("Хорошо")
            }))
            alert.addAction(UIAlertAction(title: "Отлично", style: .cancel, handler: { action in
                print("Отлично")
            }))
            
            
             
            self.present(alert, animated: true)
            
        }), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            uiButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            uiButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            uiButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            uiButton.heightAnchor.constraint(equalToConstant: 30)])
        
        
        

        
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

}
