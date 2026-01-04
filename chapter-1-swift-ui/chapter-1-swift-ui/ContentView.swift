
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
    @State private var offsetY : CGFloat = -1000.0
    var body: some View {
        ZStack {
            LinearGradient(
                colors: screenTap ? ColorList1 : ColorList2,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
                .ignoresSafeArea()
            
            VStack {
                Text("SwiftUI Basics")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .offset( y : offsetY)
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 1)){
                screenTap.toggle()
                offsetY = screenTap ? 0 : -1000.0
            }
        }
    }
}

#Preview {
    ContentView()
}
