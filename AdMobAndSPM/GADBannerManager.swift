//
//  GADBannerManager.swift
//  AdMobAndSPM
//
//  Created by G Zhen on 8/15/22.
//

import GoogleMobileAds
import SwiftUI

struct GADBannerManager: UIViewControllerRepresentable {
    let adUnitID: String
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let bannerView = GADBannerView(adSize: GADAdSizeBanner)
        let bannerViewController = UIViewController()
        
        // configure GAMBannerView properties
        bannerView.adUnitID = adUnitID
        bannerView.rootViewController = bannerViewController
        bannerViewController.view.addSubview(bannerView)
        bannerViewController.view.frame = CGRect(origin: .zero, size: GADAdSizeBanner.size)
        
        // load an ad
        let request = GADRequest()
        request.scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        bannerView.load(request)

        return bannerViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
