//
//  ContentView.swift
//  ColorPicker
//
//  Created by mohnishsingh yadav on 15/01/26.
//

import SwiftUI

struct ContentView: View {
    @State var color1: Color = .red
    @State var color2: Color = .blue
    @State var color3: Color = .green
    var body: some View {
        VStack {
            HStack(spacing: 10){
                RectangleView(color: color1)
                RectangleView(color: color2)
                RectangleView(color: color3)
            }
            .padding()
//            Spacer()
            VStack {
//                ColorPicker("Left Color", selection: $color1)
//                ColorPicker("Middle Color", selection: $color2)
//                ColorPicker("Right Color", selection: $color3)
//                
                VStack{
                    CircelColorPicker(text: "Left Color", SelectedColor: color1)
                    CircelColorPicker(text: "Middle Color", SelectedColor: color2)
                    CircelColorPicker(text: "Right Color", SelectedColor: color3)
                }
            }
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
