//
//  AirPlayControl.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct AirPlayControl: View {
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        ControlBackground {
            VStack {
                Image(systemName: "airplayvideo")
                    .foregroundColor(Color(.label).opacity(0.8))
                Text("AirPlay Display")
                    .font(.system(size: 10))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
            }
            .frame(width: width, height: height)
        }
    }
}

struct AirPlayControl_Previews: PreviewProvider {
    static var previews: some View {
        LightAndDarkPreviews {
            AirPlayControl(width: 72, height: 72)
        }
    }
}
