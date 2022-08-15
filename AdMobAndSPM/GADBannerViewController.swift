//
//  GADBannerViewController.swift
//  AdMobAndSPM
//
//  Created by G Zhen on 8/15/22.
//

import GoogleMobileAds
import SwiftUI

struct GADBannerViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let bannerView = GADBannerView(adSize: GADAdSizeBanner)
        let bannerViewController = UIViewController()
        
        // configure GAMBannerView properties
        // use the test ad unit ID(/6499/example/banner) from google
        bannerView.adUnitID = "/6499/example/banner"
        bannerView.rootViewController = bannerViewController
        bannerViewController.view.addSubview(bannerView)
        bannerViewController.view.frame = CGRect(origin: .zero, size: GADAdSizeBanner.size)
        
        // load an ad
        bannerView.load(GADRequest())

        return bannerViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
