//
//  ContentView.swift
//  Chapter-11-Tab-View
//
//  Created by mohnishsingh yadav on 07/01/26.
//

import SwiftUI

struct SimpleTabView: View {
    var body: some View {
        TabView{
            Tab("Watch", systemImage: "play"){
                Text("Watching Something")
            }
            Tab("Read".capitalized, systemImage: "book.pages.fill"){
                Text("Reading a Book")
            }
            Tab(role : .search){
                Text("Search the App")
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    SimpleTabView()
}
