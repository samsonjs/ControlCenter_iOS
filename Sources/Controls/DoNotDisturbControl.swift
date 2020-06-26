//
//  DoNotDisturbControl.swift
//  ControlCenter_iOS
//
//  Created by Sami Samhuri on 2020-06-25.
//

import SwiftUI

struct DoNotDisturbControl: View {
    var body: some View {
        ControlBackground {
            HStack {
                Button(action: {}) {
                        Image(systemName: "moon.fill")
                            .foregroundColor(Color(.label))
                            .frame(width: 28, height: 28)
                            .background(Color(.systemFill))
                            .cornerRadius(14)
                }
                Text("Do Not Disturb")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
            }
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity)
        }
    }
}

struct DoNotDisturbControl_Previews: PreviewProvider {
    static var previews: some View {
        LightAndDarkPreviews {
            DoNotDisturbControl()
        }
    }
}
