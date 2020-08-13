//
//  GlobalVariables.swift
//  WalkthroughOnboarding
//
//  Created by Mallikarjun on 13/08/20.
//  Copyright © 2020 Instamobile. All rights reserved.
//

import Foundation
import UIKit

final class GlobalVariables: NSObject {
    static let sharedInstance = GlobalVariables()
    
    private override init() { }
    
    // func foo() { }
    var userLoggedIn:Bool = false
    var showIntroScreen:Bool = true
    
}

