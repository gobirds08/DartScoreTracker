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
                        Text("Undo")
                            .foregroundStyle(.black)
                    }
                }
                .frame(width: geometry.size.width / 3, height: geometry.size.height / 2)
                .disabled(appManager.is_selections_empty())
                Spacer()
                Button {
                    appManager.submit()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                        Text("Submit")
                            .foregroundStyle(.black)
                    }
                }
                .frame(width: geometry.size.width / 3, height: geometry.size.height / 2)
                .foregroundStyle(.green)
                Spacer()
            }
            .font(.system(size: 25))
        }
    }
}

#Preview {
    ControlButtons()
        .environmentObject(AppManager())
}
