//
//  ContentView.swift
//  Chapter-8-Group-box-Example
//
//  Created by mohnishsingh yadav on 07/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var enableNotification = false
    @State private var darkMode = false
    var body: some View {
        GroupBox{
            VStack(alignment : .leading){
                Toggle("Enable Notification", isOn: $enableNotification)
                Toggle("Dark Mode", isOn: $darkMode)
            }
        } label: {
            Label("Settings", systemImage: "gearshape")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
