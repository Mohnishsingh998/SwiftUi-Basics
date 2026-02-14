//
//  NiceText_view.swift
//  Gestures_Demo
//
//  Created by mohnishsingh yadav on 14/02/26.
//

import SwiftUI

struct NiceText_view: View {
    let text : String
    let bgcolor : Color
    let gfColor : Color
    let radius : CGFloat
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(gfColor)
            .padding()
            .background(bgcolor)
            .clipShape(.rect(cornerRadius: radius))
    }
}

#Preview {
    NiceText_view(
        text: "Hello World Animation",
        bgcolor: .black,
        gfColor: .orange,
        radius: 10
    )
}
