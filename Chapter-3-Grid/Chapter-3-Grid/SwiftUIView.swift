//
//  SwiftUIView.swift
//  Chapter-3-Grid
//
//  Created by mohnishsingh yadav on 05/01/26.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            Grid{
                GridRow{
                    RoundedRectangle(cornerRadius: 20).fill(.red)
                    RoundedRectangle(cornerRadius: 20).fill(.red)
                    RoundedRectangle(cornerRadius: 20).fill(.red)
                    RoundedRectangle(cornerRadius: 20).fill(.red)
                }
                GridRow{
                    RoundedRectangle(cornerRadius: 20).fill(.red)
                    RoundedRectangle(cornerRadius: 20).fill(.red)
                    RoundedRectangle(cornerRadius: 20).fill(.green)
                        .gridCellColumns(2)
                    
                }
                GridRow{
                    RoundedRectangle(cornerRadius: 20).fill(.red)
                    RoundedRectangle(cornerRadius: 20).fill(.red)
                    RoundedRectangle(cornerRadius: 20).fill(.red)
                    RoundedRectangle(cornerRadius: 20).fill(.red)
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    SwiftUIView()
}
