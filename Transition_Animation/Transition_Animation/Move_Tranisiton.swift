//
//  Move_Tranisiton.swift
//  Transition_Animation
//
//  Created by mohnishsingh yadav on 12/02/26.
//

import SwiftUI

struct Move_Tranisiton: View {
    @State private var show = true
    var body: some View {
        ZStack{
            Background_View()
            VStack{
                Spacer()
                if show {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.pink.gradient)
                        .frame(width: 200,height: 200)
                        .transition(.move(edge: .bottom))
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
    Move_Tranisiton()
}
