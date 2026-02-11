//
//  Basic_Navigation_Transition.swift
//  Navigation
//
//  Created by mohnishsingh yadav on 11/02/26.
//

import SwiftUI

struct Basic_Navigation_Transition: View {
    var body: some View {
        NavigationStack {
            VStack{
                List{
                    NavigationLink("Suraj Bhai"){
                        PortfolioView(
                            name: "Suraj",
                            collegeName: "UIT RGPV",
                            age: 22,
                            Back: 5
                        )
                    }
                    NavigationLink("Ankit Bhai"){
                        PortfolioView(
                            name: "Ankit Baghel",
                            collegeName: "UIT RGPV",
                            age: 22,
                            Back: 5
                        )
                    }
                    NavigationLink("Mohnish Bhai"){
                        PortfolioView(
                            name: "MohnishSingh Yadav",
                            collegeName: "UIT RGPV",
                            age: 22,
                            Back: 5
                        )
                    }
                }
            }
            .navigationTitle("RoomMate Portfolio")
        }
    }
}

struct PortfolioView : View {
    var name : String
    var collegeName : String
    var age : Int
    var Back : Int
    var body: some View {
        ZStack{
            Color
                .cyan
                .opacity(0.7)
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Text("My name is \(name)")
                Text("I am a student of  \(collegeName)")
                Text("My age is \(age)")
                Text("My Total backs in my Graduation are \(Back)")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke()
            )
        }
    }
}

#Preview {
    Basic_Navigation_Transition()
}
