//
//  NowPlayingControl.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct NowPlayingControl: View {
    var body: some View {
        ControlBackground {
            HStack {
                Rectangle()
                    .fill(Color(.systemGray2))
                    .frame(width: 50, height: 50)
                    .cornerRadius(3)
                    .opacity(0.5)

                Spacer()

                Button(action: {}) {
                    Image(systemName: "play.fill")
                        .foregroundColor(Color(.secondaryLabel))
                }
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                        .foregroundColor(Color(.secondaryLabel))
                }
            }
            .padding()
        }
    }
}

struct NowPlayingControl_Previews: PreviewProvider {
    static var previews: some View {
        LightAndDarkPreviews {
            NowPlayingControl()
        }
    }
}
