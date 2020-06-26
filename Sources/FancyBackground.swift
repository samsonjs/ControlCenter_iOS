//
//  FancyBackground.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct FancyBackground<Content: View>: View {
    let content: Content

    init(@ViewBuilder build: () -> Content) {
        self.content = build()
    }

    var body: some View {
        ZStack {
            content.hidden().overlay(
                LinearGradient(
                    gradient: Gradient(colors: [.red, .purple, .blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            content
        }
    }
}

struct FancyBackground_Previews: PreviewProvider {
    static var previews: some View {
        FancyBackground {
            Text("Hello")
        }
    }
}
