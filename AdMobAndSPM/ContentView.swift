//
//  ContentView.swift
//  AdMobAndSPM
//
//  Created by G Zhen on 8/15/22.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    
    // use the test ad unit ID(/6499/example/banner) from google
    let homeAdUnitID = "/6499/example/banner"
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Spacer()
            GADBannerViewController(adUnitID: homeAdUnitID)
                .frame(width: GADAdSizeBanner.size.width, height: GADAdSizeBanner.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
