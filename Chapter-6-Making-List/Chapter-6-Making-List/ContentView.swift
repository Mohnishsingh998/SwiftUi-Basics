//
//  ContentView.swift
//  Chapter-6-Making-List
//
//  Created by mohnishsingh yadav on 06/01/26.
//

import SwiftUI

struct ContentView: View {
    let person : [Person] = [
        .init(
            name: "Oshi",
            hobby: "Badminton",
            hobbyImage: "figure.badminton"
        ),
        .init(
            name: "Mohnish",
            hobby: "Badminton",
            hobbyImage: "figure.badminton"
        ),
        .init(
            name: "isha",
            hobby: "Sleeping",
            hobbyImage: "bed.double"
        ),
        .init(
            name: "Suraj",
            hobby: "Gym",
            hobbyImage: "gym.bag"
        )
    ]
    var body: some View {
        
        List{
            ForEach(person) { person in
                RowItem(person:person)
                    .listRowSeparator(.hidden)
            }
        }
    }
        
}

struct Person : Identifiable {
    let id = UUID()
    let name : String
    let hobby : String?
    let hobbyImage : String?
}
#Preview {
    ContentView()
}
