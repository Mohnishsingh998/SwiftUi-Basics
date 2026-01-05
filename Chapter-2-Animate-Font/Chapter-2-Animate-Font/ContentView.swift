//
//  ContentView.swift
//  Chapter-2-Animate-Font
//
//  Created by mohnishsingh yadav on 05/01/26.
//

import SwiftUI

struct ContentView: View {
    @State var ToggleFont = false
    var font : Font {
        ToggleFont ? .largeTitle : .caption
    }
    var body: some View {
    
        ZStack {
            Color.pink.opacity(0.3)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                    .font(font)
                Spacer()
                Button {
                    withAnimation{
                        ToggleFont.toggle()
                    }
                }label: {
                    Text("Click Me")
                        .font(.title)
                        .foregroundStyle(.black)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
