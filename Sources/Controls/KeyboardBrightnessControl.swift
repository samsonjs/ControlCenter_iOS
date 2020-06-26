//
//  KeyboardBrightnessControl.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct KeyboardBrightnessControl: View {
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        ControlBackground {
            VStack {
                Image(systemName: "light.max")
                    .foregroundColor(Color(.label).opacity(0.8))
                Text("Keyboard Brightness")
                    .font(.system(size: 10))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
            }
            .frame(width: width, height: height)
        }
    }
}

struct KeyboardBrightnessControl_Previews: PreviewProvider {
    static var previews: some View {
        LightAndDarkPreviews {
            KeyboardBrightnessControl(width: 72, height: 72)
        }
    }
}
