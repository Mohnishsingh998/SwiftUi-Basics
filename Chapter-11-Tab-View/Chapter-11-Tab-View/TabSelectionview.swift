//
//  TabSelectionview.swift
//  Chapter-11-Tab-View
//
//  Created by mohnishsingh yadav on 07/01/26.
//

import SwiftUI

enum WatchType {
    case watch,sleep,browse
}

struct TabSelectionview: View {
    @State private var selectedTab : WatchType = .watch
    var body: some View {
        TabView(selection : $selectedTab){
            Tab("Watch",systemImage: "play.circle", value: .watch){
                Text("Watch view")
            }
            Tab("Sleep",systemImage: "sleep.circle.fille", value: .watch){
                Text("Sleep view")
            }
            Tab("Browse",systemImage: "square.grid.2x2", value: .watch){
                Text("Sleep view")
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    TabSelectionview()
}
