//
//  ContentView.swift
//  Chapter-4-Navigation-Stack-TextField
//
//  Created by mohnishsingh yadav on 05/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var userName : String = ""
    @State private var Age : String = ""
    var body: some View {
        NavigationStack{
            VStack {
                Text("Navigation Example!")
                    .font(.largeTitle)
                
                VStack(alignment : .leading){
                    Text("Enter Your Name")
                    TextField("User Name", text: $userName)
                    Text("Enter Your Age")
                    TextField("Age", text: $Age)
                }
                .padding()
                Spacer()
                Spacer()
                NavigationLink(
                    destination: {
                        DrinkingView(name: userName, age: Age)
                    }, label:{
                        Text("Okay")
                            .font(.title)
                            .padding()
                            .overlay(Capsule().stroke())
                    }
                )
                .padding()
            }
        }
    }
}
struct DrinkingView: View {
    let name : String
    let age : String
    var numericalAge : Int {
        Int(age) ?? -1
    }
    var body: some View{
        ZStack{
            Color
                .blue
                .ignoresSafeArea()
            if numericalAge >= 18 {
                Text("\(name) can Drink")
            }else if numericalAge <= 0{
                Text("Invalid Input")
            }else{
                Text("You can not Drink")
            }
        }
    }
}
#Preview {
    ContentView()
}
