//
//  WirelessView.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct WirelessView: View {
    let iconName: String
    let title: String
    let subtitle: String

    var body: some View {
        HStack {
            Button(action: {}) {
                    Image(systemName: iconName)
                        .foregroundColor(.white)
                        .frame(width: 28, height: 28)
                        .background(Color.blue)
                        .cornerRadius(14)
            }
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 12))
                    .fontWeight(.bold)

                Text(subtitle)
                    .font(.system(size: 10))
                    .fontWeight(.medium)
                    .foregroundColor(Color(.label).opacity(0.7))
            }
        }
    }
}

struct WirelessView_Previews: PreviewProvider {
    static var previews: some View {
        LightAndDarkPreviews {
            ControlBackground {
                WirelessView(iconName: "wifi", title: "Wi-Fi", subtitle: "Escher")
                    .padding()
            }
        }
    }
}
