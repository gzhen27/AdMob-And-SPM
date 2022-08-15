//
//  ContentView.swift
//  AdMobAndSPM
//
//  Created by G Zhen on 8/15/22.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    
    // use an test ad unit ID from google
    let homeAdUnitID = "ca-app-pub-3940256099942544/2934735716"
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Spacer()
            GADBannerManager(adUnitID: homeAdUnitID)
                .frame(width: GADAdSizeBanner.size.width, height: GADAdSizeBanner.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
