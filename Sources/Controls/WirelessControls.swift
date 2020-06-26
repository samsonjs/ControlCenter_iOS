//
//  WirelessControls.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct WirelessControls: View {
    var body: some View {
        ControlBackground {
            VStack(alignment: .leading) {
                WirelessView(iconName: "wifi", title: "Wi-Fi", subtitle: "Esher")
                WirelessView(iconName: "wave.3.right", title: "Bluetooth", subtitle: "On")
                WirelessView(iconName: "antenna.radiowaves.left.and.right", title: "AirDrop", subtitle: "Contacts Only")
            }
            .padding()
        }
    }
}

struct WirelessControls_Previews: PreviewProvider {
    static var previews: some View {
        WirelessControls()
    }
}
