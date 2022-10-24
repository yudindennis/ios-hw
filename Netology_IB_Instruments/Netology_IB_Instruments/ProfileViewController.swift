//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Denis Yudin on 22.09.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let n = Bundle.main.loadNibNamed("ProfileView", owner: self)![0] as! ProfileView
        view.addSubview(n)
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
