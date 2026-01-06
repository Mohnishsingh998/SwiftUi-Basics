//
//  ContentView.swift
//  Chapter-5-Animate-EveryThing
//
//  Created by mohnishsingh yadav on 05/01/26.
//

import SwiftUI

struct ContentView: View {
    @State var Togglebtn : Bool = false
    var font : Font {
        Togglebtn ? .largeTitle : .title
    }
    var offset : CGSize{
        CGSize(width : 0 , height : Togglebtn ? 400 : 0)
    }
    var color : Color {
        Togglebtn ? .red : .yellow
    }
    
    var bgColor : Color {
        Togglebtn ? .black.opacity(0.8) : .indigo
    }
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            
            VStack {
                Text("Hello, world!")
                    .font(font)
                    .foregroundStyle(color)
                    .fontWeight(.semibold)
                    .offset(offset)
                
                Spacer()
                
                Button{
                    withAnimation{
                        Togglebtn.toggle()
                    }
                } label: {
                    Text("Animate Text")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                .padding().buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
