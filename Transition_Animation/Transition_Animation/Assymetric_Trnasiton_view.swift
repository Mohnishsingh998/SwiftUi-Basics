//
//  Assymetric_Trnasiton_view.swift
//  Transition_Animation
//
//  Created by mohnishsingh yadav on 12/02/26.
//

import SwiftUI

struct Assymetric_Trnasiton_view: View {
    @State private var show = true
    var body: some View {
        ZStack{
            Background_View()
            VStack{
                Spacer()
                if show {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.orange.gradient)
                        .frame(width: 200,height: 200)
                        .transition(
                            .asymmetric(
                                insertion: .move(edge: .leading),
                                removal: .scale
                            )
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
    Assymetric_Trnasiton_view()
}
