//
//  ContentView.swift
//  ObservedObject-StateBoject
//
//  Created by mohnishsingh yadav on 16/01/26.
//

import SwiftUI
import Combine

class SomeViewModel : ObservableObject {
    @Published var data1 : String = "Hello World!"
    @Published var data2 : String = "We Can Talk ?"
}


struct ContentView: View {
    @StateObject private var viewModel = SomeViewModel()
    var body: some View {
        VStack {
            Text(viewModel.data1)
            Text(viewModel.data2)
            
            Button(action : {
                if viewModel.data1 == "Hello World!"{
                    viewModel.data1 = "No"
                    viewModel.data2 = "Try Again ⼜"
                }else {
                    viewModel.data1 = "Hello World!"
                    viewModel.data2 = "We Can Talk ?"
                }
            }, label: {
                Text("Click Me")
            })
        }
        .font(.title)
        .padding()
    }
}


struct RandomNumberView : View {
    @State private var RandomNumber : Int = 0;
    var body: some View {
        Text("The number is :\(RandomNumber)")
        Button("Randmoise Number" , action : {
            RandomNumber = (0..<1000).randomElement() ?? 0
        })
        
        ContentView()
    }
}
#Preview {
    RandomNumberView()
}
