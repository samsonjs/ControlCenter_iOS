//
//  LightAndDarkPreviews.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct LightAndDarkPreviews<Content: View>: View {
    let content: Content

    init(@ViewBuilder build: () -> Content) {
        self.content = build()
    }

    var body: some View {
        Group {
            FancyBackground {
                content
                    .padding()
            }

            FancyBackground {
                content
                    .padding()
            }
            .preferredColorScheme(.dark)
        }
    }
}

struct LightAndDarkPreviews_Previews: PreviewProvider {
    static var previews: some View {
        LightAndDarkPreviews {
            ControlBackground {
                Text("Hello").padding()
            }
        }
    }
}
