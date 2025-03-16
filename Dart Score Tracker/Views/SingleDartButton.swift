//
//  SingleDartButton.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import SwiftUI

struct SingleDartButton: View {
    let num: Int
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                Text(String(num))
                    .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    SingleDartButton(num: 1)
}
