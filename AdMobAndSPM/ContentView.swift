//
//  ContentView.swift
//  AdMobAndSPM
//
//  Created by G Zhen on 8/15/22.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    
    // use an test ad units ID from google
    let homeBannerAdUnitID = "ca-app-pub-3940256099942544/2934735716"
    let interstitalAd = GADInterstitalManager(adUnitID: "ca-app-pub-3940256099942544/4411468910")
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                interstitalAd.showAd()
            } label: {
                Text("Display Interstitial Ad")
            }
            Spacer()
            GADBannerManager(adUnitID: homeBannerAdUnitID)
                .frame(width: GADAdSizeBanner.size.width, height: GADAdSizeBanner.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
