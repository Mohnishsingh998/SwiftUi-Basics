//
//  CircelColorPicker.swift
//  ColorPicker
//
//  Created by mohnishsingh yadav on 15/01/26.
//

import SwiftUI

struct CircelColorPicker: View {
    let text : String
    @State var SelectedColor : Color
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        .purple,
        .pink,
        .brown,
        .cyan,
        .mint,
        .indigo,
        .teal,
        .gray,
        .black,
        .white,
        .primary,
        .secondary,
        .accentColor
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text(text)
                .font(.headline)
                .fontWeight(.semibold)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    
                    ForEach(colors , id: \.self){
                        colors in CirlcePicker(color: colors, isSelected: colors == SelectedColor)
                            .onTapGesture {
                                withAnimation{
                                    SelectedColor = colors
                                }
                            }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical,7)
            .background(
                .gray
                    .opacity(0.7)
            )
            .clipShape(.rect(cornerRadius: 10))
        }
        .padding()
    }
}

#Preview {
    CircelColorPicker(text: "Color", SelectedColor: .red)
}
