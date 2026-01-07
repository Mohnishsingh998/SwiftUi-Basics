//
//  BlendedCircleView.swift
//  Chapter-12-BlurEffect
//
//  Created by mohnishsingh yadav on 07/01/26.
//

import SwiftUI

struct BlendedCircleView: View {
    let color : Color
    let Circleradius : Double
    let offsetx : Double
    let offsety : Double
    let blurRadius : Double
    let Blendmode : BlendMode
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: Circleradius , height: Circleradius)
            .offset(x: offsetx , y: offsety)
            .blur(radius: blurRadius )
            .blendMode(Blendmode)
    }
}

#Preview {
    BlendedCircleView(
        color: .red,
        Circleradius: 20.0,
        offsetx: -50.0,
        offsety: 25.0,
        blurRadius: 23,
        Blendmode: .normal
    )
}
