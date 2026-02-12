//
//  FlipTransitionView.swift
//  Transition_Animation
//
//  Created by mohnishsingh yadav on 13/02/26.
//

import SwiftUI

struct FlipTransitionView: View {
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
                        .overlay(content: {
                            Text("Flip")
                                .font(.largeTitle)
                                .bold()
                                .foregroundStyle(.white)
                        })
                        .transition(
                            .flipfromTop
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
        .navigationTitle("Flip-transaction")
        .multilineTextAlignment(.leading)
    }
}

#Preview {
    FlipTransitionView()
}
