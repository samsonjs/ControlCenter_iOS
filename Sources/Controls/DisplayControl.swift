//
//  DisplayControl.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct DisplayControl: View {
    var body: some View {
        ControlBackground {
            VStack(alignment: .leading, spacing: 4) {
                Text("Display")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                HStack {
                    Slider(value: .constant(0.04))
                    Button(action: {}) {
                            Image(systemName: "display")
                                .foregroundColor(Color(.label))
                                .frame(width: 28, height: 28)
                                .background(Color(.systemFill))
                                .cornerRadius(14)
                    }
                }
            }
            .padding(8)
        }
    }
}

struct DisplayControl_Previews: PreviewProvider {
    static var previews: some View {
        LightAndDarkPreviews {
            DisplayControl()
        }
    }
}
