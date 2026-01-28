//
//  SfSymbolView.swift
//  SF-Symbol-Animation
//
//  Created by mohnishsingh yadav on 28/01/26.
//

import SwiftUI

struct SfSymbolView: View {
    
    @State private var Clicked  = false
    @State private var Paused = false
    var body: some View {
        ZStack{
            Color
                .black
                .opacity(0.5)
                .ignoresSafeArea()
            
            VStack {
                HStack(spacing: 30){
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .symbolEffectsRemoved(Paused)
                        .symbolEffect(.bounce, value: Clicked)
                        .padding()
                    Image(systemName: "sun.rain")
                        .imageScale(.large)
                        .symbolEffect(.bounce, value: Clicked)
                        .padding()
                    Image(systemName: "square.stack.3d.up")
                        .imageScale(.large)
                        .symbolEffect(.variableColor.cumulative, value: Clicked)
                        .padding()
                    Image(systemName: "person.fill.questionmark")
                        .imageScale(.large)
                        .symbolEffect(.variableColor.iterative, value: Clicked)
                        .padding()
                    Image(systemName: Clicked ? "eye" :"eyebrow")
                        .imageScale(.large)
                        .symbolEffect(.bounce, value: Clicked)
                        .padding()
                    
                }
                
                
                HStack {
                    Button(
                        action: {
                            Clicked.toggle()
                        } ,
                        label: {
                            Text("Click Me")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(.red)
                                .padding(.vertical,7)
                                .padding(.horizontal,11)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(.black)
                                )
                        } )
                    Button(
                        action: {
                            Paused.toggle()
                        } ,
                        label: {
                            Text(Paused ? "Resume Globe" : "Pause Globe")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(Paused ? .orange : .red)
                                .padding(.vertical,7)
                                .padding(.horizontal,11)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(.black)
                                )
                    } )
                }
            }
            .padding()
        }
        
        
    }
}

#Preview {
    SfSymbolView()
}
