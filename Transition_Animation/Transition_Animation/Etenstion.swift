//
//  Etenstion.swift
//  Transition_Animation
//
//  Created by mohnishsingh yadav on 12/02/26.
//

import SwiftUI

extension AnyTransition {
    static var rotatingscale : AnyTransition{
        AnyTransition
            .modifier(
                active: RotatingScaleModeifier(
                    angle: 90,
                    scale: 0.1,
                    opacity: 0
                ),
                identity: RotatingScaleModeifier(
                    angle: 0,
                    scale: 1,
                    opacity: 1
                )
            )
    }
    static var flipfromTop : AnyTransition{
        AnyTransition
            .modifier(
                active: FlipScaleModeifier(
                    angle: -90,
                    opacity: 0
                ),
                identity: FlipScaleModeifier(
                    angle: 0,
                    opacity: 1
                )
            )
    }
    
    static var scaleandBlur : AnyTransition{
        AnyTransition
            .modifier(
                active: ScaleandBlurModifer(
                    scale: 0.3,
                    blur: 10,
                    opacity: 0
                ),
                identity: ScaleandBlurModifer(
                    scale: 1,
                    blur: 0,
                    opacity: 1
                )
            )
    }
}


struct RotatingScaleModeifier : ViewModifier{
    let angle : Double
    let scale : Double
    let opacity : Double
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(angle))
            .scaleEffect(scale)
            .opacity(opacity)
    }
}


struct FlipScaleModeifier : ViewModifier{
    let angle : Double
    let opacity : Double
    func body(content: Content) -> some View {
        content
            .rotation3DEffect(
                .degrees(angle),
                axis: (x: 1, y: 0, z: 0)
            )
            .opacity(opacity)
    }
    
}

struct ScaleandBlurModifer : ViewModifier{
    let scale : CGFloat
    let blur : CGFloat
    let opacity : Double
    func body(content: Content) -> some View {
        content
            .scaleEffect(scale)
            .blur(radius: blur)
            .opacity(opacity)
    }
}
