//
//  ControlButtons.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/17/25.
//

import SwiftUI

struct ControlButtons: View {
    @EnvironmentObject var appManager : AppManager
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Spacer()
                Button {
                    appManager.undo()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                            .foregroundStyle(.blue)
                        Text("Undo")
                    }
                }
                .frame(width: geometry.size.width / 3, height: geometry.size.height)
                .disabled(appManager.is_selections_empty())
                Spacer()
                Button {
                    appManager.submit()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                            .foregroundStyle(.green)
                        Text("Submit")
                    }
                }
                .frame(width: geometry.size.width / 3, height: geometry.size.height)
                Spacer()
            }
            .font(.system(size: 25))
        }
        .frame(height: 100)
    }
}

#Preview {
    ControlButtons()
        .environmentObject(AppManager())
}
