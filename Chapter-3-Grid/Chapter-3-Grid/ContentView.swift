//
//  ContentView.swift
//  Chapter-3-Grid
//
//  Created by mohnishsingh yadav on 05/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            
            Grid{
                GridRow{
                    RoundedRectangle(cornerRadius: 20).fill(.black)
                    RoundedRectangle(cornerRadius: 20).fill(.black)
                    RoundedRectangle(cornerRadius: 20).fill(.black)
                }
                GridRow{
                    RoundedRectangle(cornerRadius: 20).fill(.black)
                    RoundedRectangle(cornerRadius: 20).fill(.green)
                        .gridCellColumns(2)
                }
                GridRow{
                    RoundedRectangle(cornerRadius: 20).fill(.black)
                    RoundedRectangle(cornerRadius: 20).fill(.black)
                    RoundedRectangle(cornerRadius: 20).fill(.black)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
