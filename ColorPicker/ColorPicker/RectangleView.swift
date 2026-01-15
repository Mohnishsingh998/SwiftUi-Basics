//
//  SwiftUIView.swift
//  ColorPicker
//
//  Created by mohnishsingh yadav on 15/01/26.
//

import SwiftUI

struct RectangleView: View {
    var dim : CGFloat = 50;
    var color : Color
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(color)
            .frame(width: dim, height: dim)
        
    }
}

#Preview {
    RectangleView(color: .green)
}
