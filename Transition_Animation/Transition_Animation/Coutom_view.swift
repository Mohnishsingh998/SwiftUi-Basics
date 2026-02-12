//
//  Coutom_view.swift
//  Transition_Animation
//
//  Created by mohnishsingh yadav on 12/02/26.
//

import SwiftUI

struct Coutom_view: View {
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
                            .rotatingscale
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
        .navigationTitle("Rotation-scale-custom-transaction")
        .multilineTextAlignment(.leading)
    }
}

#Preview {
    Coutom_view()
}
