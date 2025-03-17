//
//  CurrentSelections.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/17/25.
//

import SwiftUI

struct CurrentSelections: View {
    @EnvironmentObject var appManager : AppManager
    var body: some View {
        HStack {
            ForEach(Array(appManager.selections.enumerated()), id: \.offset) { index, selection in
                    Spacer()
                    Text(appManager.selection_to_string(selection: selection))
                        .font(.system(size: 20))
            }
            Spacer()
        }
    }
}

#Preview {
    CurrentSelections()
        .environmentObject(AppManager())
}
