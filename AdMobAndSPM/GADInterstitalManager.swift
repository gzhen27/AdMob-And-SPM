//
//  GADInterstitalManager.swift
//  AdMobAndSPM
//
//  Created by G Zhen on 8/15/22.
//

import SwiftUI
import GoogleMobileAds

final class GADInterstitalManager: NSObject, GADFullScreenContentDelegate {
    
    private var interstital: GADInterstitialAd?
    var adUnitID: String
    
    init(adUnitID: String) {
        self.adUnitID = adUnitID
        super.init()
        self.load()
    }
    
    private func load() {
        let request = GAMRequest()
        request.scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        GAMInterstitialAd.load(withAdManagerAdUnitID: adUnitID, request: request) { [self] ad, error in
            if let error = error {
                print("Ad test - Failed to load interstitial ad with error: \(error.localizedDescription)")
                return
            }
            
            interstital = ad
            interstital?.fullScreenContentDelegate = self
        }
    }
    
    /// Tells the delegate that the ad failed to present full screen content.
    func ad(_ ad: GADFullScreenPresentingAd, didFailToPresentFullScreenContentWithError error: Error) {
        print("Ad test - Ad did fail to present full screen content.")
    }
    
    /// Tells the delegate that the ad will present full screen content.
    func adWillPresentFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        print("Ad test - Ad will present full screen content")
    }
    
    /// Tells the delegate that the ad dismissed full screen content.
    func adDidDismissFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        print("Ad test - Ad did dismiss full screen content")
        load()
    }
    
    func showAd() {
        let root = UIApplication.shared.windows.first?.rootViewController
        interstital?.present(fromRootViewController: root!)
    }
}
