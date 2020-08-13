//
//  LoginViewController.swift
//  WalkthroughOnboarding
//
//  Created by Mallikarjun on 13/08/20.
//  Copyright © 2020 Instamobile. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
       // self.navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        
       // self.navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
       
      //  GlobalVariables.sharedInstance.userLoggedIn = true
      //  GlobalVariables.sharedInstance.showIntroScreen = false
        UserDefaults.standard.set(true, forKey: "userLoggedIn")
        UserDefaults.standard.set(true, forKey: "showIntroScreen")
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
       // self.navigationController?.pushViewController(homeVC, animated: true)
        homeVC.modalPresentationStyle = .fullScreen
        self.present(homeVC, animated: true, completion: nil)
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
