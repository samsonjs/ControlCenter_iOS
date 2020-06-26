//
//  BatteryControl.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct BatteryControl: View {
    var body: some View {
        ControlBackground {
            HStack {
                Image(systemName: "battery.100")
                VStack(alignment: .leading) {
                    Text("Battery")
                        .foregroundColor(Color(.secondaryLabel))
                        .font(.system(size: 11))
                        .fontWeight(.bold)
                    Text("85%")
                        .font(.system(size: 11))
                        .fontWeight(.bold)
                }
            }
            .padding(8)
        }
    }
}

struct BatteryControl_Previews: PreviewProvider {
    static var previews: some View {
        LightAndDarkPreviews {
            BatteryControl()
        }
    }
}
