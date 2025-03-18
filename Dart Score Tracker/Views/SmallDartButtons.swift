//
//  SmallDartButtons.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/17/25.
//

import SwiftUI

struct SmallDartButtons: View {
    var body: some View {
        GeometryReader { geometry in
            let buttonSize = geometry.size.width / 5
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    ForEach((15...21).reversed(), id: \.self) { index in
                        if index != 21 {
                            SingleDartButton(num: index)
                                .frame(width: buttonSize, height: buttonSize)
                        } else {
                            SingleDartButton(num: 25)
                                .frame(width: buttonSize, height: buttonSize)
                        }
                    }
                }
            }
        }
        .frame(height: 80)
    }
}

#Preview {
    SmallDartButtons()
}
