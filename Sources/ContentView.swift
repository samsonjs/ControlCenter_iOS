//
//  ContentView.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FancyBackground {
            VStack(alignment: .leading) {
                HStack {
                    WirelessControls()
                    VStack {
                        DoNotDisturbControl()
                        HStack {
                            KeyboardBrightnessControl(width: 72, height: 72)
                            AirPlayControl(width: 72, height: 72)
                        }
                    }
                }
                DisplayControl()
                SoundControl()
                NowPlayingControl()
                BatteryControl()
            }
            .padding()
            .frame(maxWidth: 330)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()

            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
