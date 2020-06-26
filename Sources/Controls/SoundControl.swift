//
//  SoundControl.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct SoundControl: View {
    var body: some View {
        ControlBackground {
            VStack(alignment: .leading, spacing: 4) {
                Text("Sound")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                HStack {
                    Slider(value: .constant(0.04))
                    Button(action: {}) {
                            Image(systemName: "airplayaudio")
                                .foregroundColor(Color(.label))
                                .background(Color(.systemFill))
                                .frame(width: 28, height: 28)
                                .cornerRadius(14)
                    }
                }
            }
            .padding(8)
        }
    }
}

struct SoundControl_Previews: PreviewProvider {
    static var previews: some View {
        LightAndDarkPreviews {
            SoundControl()
        }
    }
}
