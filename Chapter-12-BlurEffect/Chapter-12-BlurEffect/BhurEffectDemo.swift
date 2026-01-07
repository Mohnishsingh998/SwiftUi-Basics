//
//  ContentView.swift
//  Chapter-12-BlurEffect
//
//  Created by mohnishsingh yadav on 07/01/26.
//

import SwiftUI

struct BhurEffectDemo: View {
    @State private var MainBlurRadius : Double = 10.0
    @State private var redBlurRadius : Double = 10.0
    @State private var blueBlurRadius : Double = 10.0
    
    let blendModes : [BlendMode] = [
        .plusLighter, .softLight, .normal
    ]
    
    @State private var blendModeIndex = 0;
    var blendMode : BlendMode{
        blendModes[blendModeIndex]
    }
    var body: some View {
        VStack {
            
            ZStack{
                LinearGradient(
                    colors: [.purple,.red,.orange,.green],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .blur(radius: MainBlurRadius)
                
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .clipShape(.rect(cornerRadius: 30))
                    .overlay{
                        Text("Cool Blur Effects")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                            .padding()
                    }.padding()
                
                BlendedCircleView(
                    color: .red,
                    Circleradius: 200.0,
                    offsetx: -100.0,
                    offsety: 100.0,
                    blurRadius: redBlurRadius,
                    Blendmode: blendMode
                )
                BlendedCircleView(
                    color: .blue,
                    Circleradius: 150.0,
                    offsetx: 100.0,
                    offsety: -100.0,
                    blurRadius: blueBlurRadius,
                    Blendmode: blendMode
                )
                
            }
            .padding()
//             sliders
            VStack{
                SliderTextView(
                    value: $MainBlurRadius,
                    min: 0,
                    max: 30,
                    text: "Main Blur Radius",
                    color: .purple
                )
                SliderTextView(
                    value: $redBlurRadius,
                    min: 0,
                    max: 50,
                    text: "Main Blur Radius",
                    color: .red
                )
                SliderTextView(
                    value: $blueBlurRadius,
                    min: 0,
                    max: 50,
                    text: "Main Blur Radius",
                    color: .blue
                )
            }
            .padding()
            .background(.clear)
        }
        .padding()
        .onTapGesture {
            blendModeIndex = (blendModeIndex + 1) % blendModes.count
        }
    }
}

#Preview {
    BhurEffectDemo()
}
