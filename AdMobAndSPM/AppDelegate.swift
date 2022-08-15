//
//  AppDelegate.swift
//  AdMobAndSPM
//
//  Created by G Zhen on 8/15/22.
//

import UIKit
import GoogleMobileAds

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        print("Initializing the Mobile Ads SDK")
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        
        return true
    }
}
