//
//  HomeViewController.swift
//  WalkthroughOnboarding
//
//  Created by Mallikarjun on 12/08/20.
//  Copyright © 2020 Instamobile. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var window: UIWindow?
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func logOutButtonClicked(_ sender: Any) {
        
       // GlobalVariables.sharedInstance.userLoggedIn = false
        UserDefaults.standard.set(false, forKey: "userLoggedIn")
        
        let loginVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginViewController")
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = loginVC
        self.window?.makeKeyAndVisible()
    }
}
