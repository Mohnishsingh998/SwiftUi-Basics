
import SwiftUI

struct ContentView: View {
    let ColorList1 : [Color] = [
            .green,
            .red,
            .blue,
            .purple,
            .black,
            .cyan
    ]
    let ColorList2 : [Color] = [
        .yellow,
        .black,
        .orange,
        .cyan,
        .indigo,
        .red
    ]
    
    ///static varialble used for the mutalbe componnts or parts in the views
    @State private var screenTap : Bool = false;
    let rotateAngle : CGFloat = 360.0
    var text : String {
        screenTap
        ?"Hello How are you have you done your work, if not do it at any cost!! 😩"
        : "Swift UI bascis"
    }
//    / make the boolean fun to retrun based on the screenTap condition
    
    var font : Font {
        screenTap ? .headline : .largeTitle
    }
    var body: some View {
        ZStack {
            LinearGradient(
                colors: screenTap ? ColorList1 : ColorList2,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
                .ignoresSafeArea()
            
            VStack {
                Text(text)
                    .font(font)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                    .rotation3DEffect(
                        Angle(degrees: (screenTap ? 0 : rotateAngle)),
                        axis: (x: 1, y: 1, z: 1)
                    )
            }
        }
        .onTapGesture {
            withAnimation(){
                    screenTap.toggle()
                }
        
        }
    }
}

#Preview {
    ContentView()
}
