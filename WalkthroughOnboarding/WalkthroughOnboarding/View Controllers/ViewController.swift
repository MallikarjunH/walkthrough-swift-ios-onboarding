//
//  ViewController.swift
//  WalkthroughOnboarding
//
//  Created by Florian Marcu on 8/16/18.
//  Copyright © 2018 Instamobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  ATCWalkthroughViewControllerDelegate{
  let walkthroughs = [
    ATCWalkthroughModel(title: "Quick Overview", subtitle: "Quickly visualize important business metrics. The overview in the home tab shows the most important metrics to monitor how your business is doing in real time.", icon: "analytics-icon"),
    ATCWalkthroughModel(title: "Analytics", subtitle: "Dive deep into charts to extract valuable insights and come up with data driven product initiatives, to boost the success of your business.", icon: "bars-icon"),
    ATCWalkthroughModel(title: "Dashboard Feeds", subtitle: "View your sales feed, orders, customers, products and employees.", icon: "activity-feed-icon"),
    ATCWalkthroughModel(title: "Get Notified", subtitle: "Receive notifications when critical situations occur to stay on top of everything important.", icon: "bell-icon"),
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let walkthroughVC = self.walkthroughVC()
    walkthroughVC.delegate = self
    self.addChildViewControllerWithView(walkthroughVC)
  }
  
  func walkthroughViewControllerDidFinishFlow(_ vc: ATCWalkthroughViewController) {
    
    /*UIView.transition(with: self.view, duration: 1, options: .transitionFlipFromLeft, animations: {
      vc.view.removeFromSuperview()
      let viewControllerToBePresented = UIViewController()
      self.view.addSubview(viewControllerToBePresented.view)
    }, completion: nil)*/
    
    //This code is not for animation
    UIView.transition(with: self.view, duration: 0, options: .transitionFlipFromLeft, animations: {
      vc.view.removeFromSuperview()
       
        //var window: UIWindow?
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.view.window!.rootViewController = homeVC;
        
    }, completion: nil)
  }
  
  fileprivate func walkthroughVC() -> ATCWalkthroughViewController {
    let viewControllers = walkthroughs.map { ATCClassicWalkthroughViewController(model: $0, nibName: "ATCClassicWalkthroughViewController", bundle: nil) }
    return ATCWalkthroughViewController(nibName: "ATCWalkthroughViewController",
                                        bundle: nil,
                                        viewControllers: viewControllers)
  }
  
    @IBAction func loginButtonClicked(_ sender: Any) {
        print("Clicked on Login")
    }
}
