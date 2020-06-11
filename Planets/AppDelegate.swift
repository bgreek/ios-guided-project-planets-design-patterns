//
//  AppDelegate.swift
//  Planets
//
//  Created by Andrew R Madsen on 8/2/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(respondsToNotificationFromPlutoStatusChanged),
                                               name: .plutoPlanetStatusChanged,
                                               object: nil) // if nil, listen from all broadcasters
        
        return true
    }
    
    @objc func respondsToNotificationFromPlutoStatusChanged() {
        print("Status Changed")
    }
    
    // Prepare the app delegate for restoring UI state.
    func application(_ application: UIApplication, shouldRestoreSecureApplicationState coder: NSCoder) -> Bool {
        return true
    }
    
    // Prepare the app delegate of saving UI state.
    func application(_ application: UIApplication, shouldSaveSecureApplicationState coder: NSCoder) -> Bool {
        return true
    }
}

