//
//  ContentView.swift
//  DrawOnOff
//
//  Created by mohnishsingh yadav on 09/02/26.
//

import SwiftUI

struct ContentView: View {
    @State private var speed = 0.5
    var body: some View {
        VStack {
            DrawOnToggleView(
                title: "Draw On layer",
                effect: .drawOn.byLayer.individually,
                speed: speed
            )
            DrawOnToggleView(
                title: "Draw On individually",
                effect: .drawOn.individually,
                speed: speed
            )
            DrawOnToggleView(
                title: "Draw On wholeSymbol",
                effect: .drawOn.wholeSymbol,
                speed: speed
            )
            Slider(value: $speed, in: 0...100, step: 0.05)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
