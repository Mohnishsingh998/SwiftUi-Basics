//
//  Background_View.swift
//  Transition_Animation
//
//  Created by mohnishsingh yadav on 12/02/26.
//

import SwiftUI

struct Background_View: View {
    var body: some View {
        MeshGradient(
            width: 2,
            height: 2,
            points: [[0,0],[1,0],[0,1],[1,1]],
            colors: [.pink,.indigo,.yellow,.red]
        )
        .opacity(0.7)
        .ignoresSafeArea()
        
    }
        
}

#Preview {
    Background_View()
}
