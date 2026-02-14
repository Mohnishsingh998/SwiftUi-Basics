//
//  SquaresRowView.swift
//  Gestures_Demo
//
//  Created by mohnishsingh yadav on 14/02/26.
//

import SwiftUI

struct SquaresRowView: View {
    let color: [Color]
    let dim : CGFloat
    init(color: [Color], dim: CGFloat = 50) {
        self.color = color
        self.dim = dim
    }
    var body: some View {
        GridRow{
            ForEach(color, id:  \.self){
                color in
                color
                    .frame(width: dim, height: dim, alignment: .center)
                    .cornerRadius(5)
            }
        }
    }
}

#Preview {
    Grid{
        SquaresRowView(color:[.red,.green,.blue])
    }
}
