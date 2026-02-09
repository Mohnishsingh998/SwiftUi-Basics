//
//  DrawOnToggleView.swift
//  DrawOnOff
//
//  Created by mohnishsingh yadav on 09/02/26.
//

import SwiftUI

struct DrawOnToggleView : View {
    
    let title : String
    let effect : DrawOnSymbolEffect
    let symbolName : String
    let speed : Double
    
    
    @State private var isActive = true
    
    init(
        title: String,
        effect: DrawOnSymbolEffect,
        symbolName: String = "signature",
        speed: Double
    ) {
        self.title = title
        self.effect = effect
        self.symbolName = symbolName
        self.speed = speed
    }
    var body: some View {
        VStack(spacing: 12) {
            Text(title)
                .font(.headline)
                .bold()
            HStack {
                Image(systemName: symbolName)
                    .foregroundStyle(.secondary.opacity(0.7))
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                Image(systemName: symbolName)
                    .symbolEffect(
                        effect,
                        options: .speed(speed),
                        isActive: isActive
                    )
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .stroke()
        )
        .onTapGesture {
            isActive.toggle()
        }
        
        
    }
}

#Preview {
    VStack{
        DrawOnToggleView(
            title: "Draw on Toggle",
            effect: .drawOn.byLayer,
            speed: 5
        )
    }
}
