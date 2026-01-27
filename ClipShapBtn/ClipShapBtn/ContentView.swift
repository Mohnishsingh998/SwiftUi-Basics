//
//  ContentView.swift
//  ClipShapBtn
//
//  Created by mohnishsingh yadav on 27/01/26.
//

import SwiftUI

struct ContentView: View {
    @State var toogel : Bool = false
    var message : String {
        toogel ? "Play" : "Pause"
    }
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue,.yellow,.green,.red], startPoint: .topLeading, endPoint: .trailing)
                .ignoresSafeArea()
            VStack (spacing: 30){
                Image("flower")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay{
                        Text(message)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding(.horizontal,10)
                            .padding(.vertical,7)
                            .background(.gray).opacity(0.87)
                            .cornerRadius(20)
                    }
                    .padding()
                    .onTapGesture {
                        withAnimation{
                            toogel.toggle();
                        }
                    }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
