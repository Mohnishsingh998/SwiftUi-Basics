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
