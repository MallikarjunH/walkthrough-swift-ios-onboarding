//
//  ATCClassicWalkthroughViewController.swift
//  WalkthroughOnboarding
//
//  Created by Mallikarjun on 01/09/20.
//  Copyright © 2020 Instamobile. All rights reserved.
//

import UIKit

class ATCClassicWalkthroughViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    
    let model: ATCWalkthroughModel
    
    init(model: ATCWalkthroughModel,
         nibName nibNameOrNil: String?,
         bundle nibBundleOrNil: Bundle?) {
      self.model = model
      super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
   // imageView.image = UIImage.localImage(model.icon, template: true)
    imageView.image = UIImage.init(named:model.icon)
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    imageView.tintColor = .white
    //imageContainerView.backgroundColor = .clear
    
    titleLabel.text = model.title
    titleLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
    titleLabel.textColor = .black
    
//    subtitleLabel.attributedText = NSAttributedString(string: model.subtitle)
  //  subtitleLabel.font = UIFont.systemFont(ofSize: 14.0)
  //  subtitleLabel.textColor = .white
    
    //containerView.backgroundColor = UIColor(hexString: "#3068CC")
  }
}
