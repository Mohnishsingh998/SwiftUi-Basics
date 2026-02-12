//
//  Slide-transition-view.swift
//  Transition_Animation
//
//  Created by mohnishsingh yadav on 12/02/26.
//

import SwiftUI

struct Slide_transition_view: View {
    @State private var show = true
    var body: some View {
        ZStack{
            Background_View()
            VStack{
                Spacer()
                if show {
                    Circle()
                        .fill(.indigo.gradient)
                        .shadow(radius: 25 , y: 20 )
                        .frame(width: 200,height: 200)
                        .transition(.slide)
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
    Slide_transition_view()
}
