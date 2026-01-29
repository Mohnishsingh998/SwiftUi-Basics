//
//  Sf_Symbol_Animation_Trancition.swift
//  SF-Symbol-Animation
//
//  Created by mohnishsingh yadav on 29/01/26.
//

import SwiftUI

struct Sf_Symbol_Animation_Trancition: View {
    @State private var Clicked = false;
    @State private var Paused = false;
    @State private var layeranimate = false;
    @State private var animateRunig = false;
    @State private var RunCount = 1;
    var body: some View {
        VStack{
            HStack{
                Image(systemName: Clicked ? "globe" : "person")
                    .imageScale(.large)
                    .symbolEffectsRemoved(Paused)
                    .symbolEffect(.bounce, value: Clicked)
                    .contentTransition(
                        .symbolEffect(.replace.byLayer.downUp)
                    )
                
                Image(systemName: Clicked ? "globe" : "person")
                    .imageScale(.large)
                    .symbolEffectsRemoved(Paused)
                    .symbolEffect(.bounce, value: Clicked)
                    .contentTransition(
                        .symbolEffect(.replace.wholeSymbol.upUp)
                    )
            }
            .padding()
            
//            button
            
            HStack {
                Button(action: {
                    Clicked.toggle()
                }, label: {
                    Text("Click Me!")
                        .font(.headline)
                        .foregroundStyle(Clicked ? .orange : .gray)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.black)
                        )
                })
                
                Button(action: {
                    Paused.toggle()
                }, label: {
                    Text("Puase Me!")
                        .font(.headline)
                        .foregroundStyle(Paused ? .orange : .gray)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.black)
                        )
                })
            }
            
            HStack{
                Button(action: {
                    RunCount += 1
                }, label: {
                    Label("Click Me To Run  \(RunCount)", systemImage: "figure.run.square.stack")
                        .imageScale(.large)
                })
                .symbolEffect(
                    layeranimate ? .variableColor.cumulative : .variableColor.iterative,
                    options: .repeat(RunCount),
                    value: RunCount
                )
                .font(.largeTitle)
                .padding()
            }
            .padding()
        
        }
    }
}

#Preview {
    Sf_Symbol_Animation_Trancition()
}
