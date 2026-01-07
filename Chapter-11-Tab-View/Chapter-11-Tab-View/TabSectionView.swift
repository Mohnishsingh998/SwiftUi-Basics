//
//  TabSectionView.swift
//  Chapter-11-Tab-View
//
//  Created by mohnishsingh yadav on 07/01/26.
//

import SwiftUI

struct TabSectionView: View {
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
            TabSection("Collections"){
                Tab("Watch", systemImage: "play"){
                    Text("Watching Something")
                }
                Tab("Read".capitalized, systemImage: "book.pages.fill"){
                    Text("Reading a Book")
                }
            }
            TabSection("Hobbies"){
                Tab("Watch", systemImage: "play"){
                    Text("Watching Something")
                }
                Tab("Read".capitalized, systemImage: "book.pages.fill"){
                    Text("Reading a Book")
                }
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    TabSectionView()
}
