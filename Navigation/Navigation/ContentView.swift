//
//  ContentView.swift
//  Navigation
//
//  Created by mohnishsingh yadav on 10/02/26.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var namespace
    var body: some View {
        NavigationStack{
            NavigationLink{
                ZStack{
                    Color.cyan.opacity(0.3).ignoresSafeArea()
                    Text("Destintation view")
                        .font(.title)
                        .navigationTransition(
                            .zoom(
                                sourceID: "id Hello",
                                in: namespace
                            )
                        )
                }
            }label: {
                Text("Hello, world!")
                    .font(.largeTitle)
                    .bold()
                    .fontWidth(.expanded)
                    .matchedTransitionSource(
                        id: "id Hello",
                        in: namespace
                    )
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
