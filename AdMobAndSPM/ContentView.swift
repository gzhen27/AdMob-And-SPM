//
//  ContentView.swift
//  AdMobAndSPM
//
//  Created by G Zhen on 8/15/22.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Spacer()
            GADBannerViewController()
                .frame(width: GADAdSizeBanner.size.width, height: GADAdSizeBanner.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
