//
//  CirlcePicker.swift
//  ColorPicker
//
//  Created by mohnishsingh yadav on 15/01/26.
//

import SwiftUI


struct CirlcePicker: View {
    var color : Color
    var isSelected : Bool
    let Selected : CGFloat = 30.0;
    
    let NotSelected : CGFloat = 20.0
    var dim : CGFloat {
        isSelected ? Selected : NotSelected
    }
    var body: some View {
        VStack {
            Circle()
                .fill(color)
                .frame(width: dim , height: dim)
        }
    }
}

#Preview {
    VStack{
        CirlcePicker(color: .green, isSelected: true)
        CirlcePicker(color: .red, isSelected: false)
    }
}
