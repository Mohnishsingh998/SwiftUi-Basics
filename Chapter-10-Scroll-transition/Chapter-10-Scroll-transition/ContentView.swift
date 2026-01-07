//
//  ContentView.swift
//  Chapter-10-Scroll-transition
//
//  Created by mohnishsingh yadav on 07/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing : 20){
                ForEach(image , id: \.self){ image in
                    ZStack{
                        MyImageView(name: image)
                            .scrollTransition(axis: .horizontal ){
                                content , phase
                                in
                                let value = phase.value
                                
                                let opacity = cos((.pi/2)*value)
                                return content
                                    .scaleEffect(opacity)
                                    .opacity(opacity)
                                
                            }
                    }
                    .containerRelativeFrame(.horizontal)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
