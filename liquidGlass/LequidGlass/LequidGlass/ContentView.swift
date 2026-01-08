//
//  ContentView.swift
//  LequidGlass
//
//  Created by mohnishsingh yadav on 08/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var morph = false
    var spacing : CGFloat {
        morph ? 40.0 : 0.0
    }
    var body: some View {
        ZStack {
            VStack {
                Image(.dogInNature)
                    .resizable()
                    .scaledToFill()
                    .opacity(0.8)
                    .ignoresSafeArea()
            }
            
            VStack{
                Text("Hello Dogesh Bhai!")
                    .padding()
                    .glassEffect()
                
                GlassEffectContainer(spacing: 30){
                    HStack(spacing : spacing){
                        Image(systemName : "scribble.variable")
                            .font(.system(size:36))
                            .frame(width: 80,height: 80)
                            .glassEffect(.regular.tint(.blue))
                        
                        Image(systemName : "eraser.fill")
                            .font(.system(size:36))
                            .frame(width: 80,height: 80)
                            .glassEffect(.regular.tint(.blue))
                    }
                    
                }
            }
        }
        .onTapGesture {
            withAnimation(.bouncy){
                morph.toggle()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
