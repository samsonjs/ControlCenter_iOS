//
//  ControlBackground.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct ControlBackground<Content: View>: View {
    let bgColor: Color
    let radius: CGFloat
    let opacity: Double
    let content: Content

    init(
        bgColor: Color = Color(.secondarySystemGroupedBackground),
        radius: CGFloat = 12,
        opacity: Double = 0.8,
        @ViewBuilder build: () -> Content
    ) {
        self.bgColor = bgColor
        self.radius = radius
        self.opacity = opacity
        self.content = build()
    }

    var body: some View {
        ZStack {
            content.hidden().overlay(
                RoundedRectangle(cornerRadius: radius, style: .continuous)
                    .foregroundColor(bgColor)
                    .opacity(opacity)
            )
            content
        }
    }
}

struct ControlBackground_Previews: PreviewProvider {
    static var previews: some View {
        LightAndDarkPreviews {
            ControlBackground {
                Text("Hello")
                    .padding()
            }
        }
    }
}
