//
//  Combined_Transition_view.swift
//  Transition_Animation
//
//  Created by mohnishsingh yadav on 12/02/26.
//

import SwiftUI

struct Combined_Transition_view: View {
    @State private var show = true
    var body: some View {
        ZStack{
            Background_View()
            VStack{
                Spacer()
                if show {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.teal.gradient)
                        .frame(width: 200,height: 200)
                        .transition(
                            .move(edge: .bottom)
                            .combined(
                                with: .opacity
                            )
//                            .combined(with: .scale)
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
    }
}

#Preview {
    Combined_Transition_view()
}
