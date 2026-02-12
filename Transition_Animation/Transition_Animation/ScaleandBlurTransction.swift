//
//  ScaleandBlurTransction.swift
//  Transition_Animation
//
//  Created by mohnishsingh yadav on 13/02/26.
//

import SwiftUI

struct ScaleandBlurTransction: View {
    @State private var show = true
    var body: some View {
        ZStack{
            Background_View()
            VStack{
                Spacer()
                if show {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.purple.gradient)
                        .frame(width: 200,height: 200)
                        .transition(
                            .scaleandBlur
                        )
                }
                Spacer()
                Button(show ? "Hide" : "Show"){
                    withAnimation(.easeInOut){
                        show.toggle()
                    }
                }.buttonStyle(.borderedProminent)
            }
        }
        .navigationTitle("ScaleandBlur-transaction")
        .font(.headline)
        .multilineTextAlignment(.leading)
    }
}

#Preview {
    ScaleandBlurTransction()
}
