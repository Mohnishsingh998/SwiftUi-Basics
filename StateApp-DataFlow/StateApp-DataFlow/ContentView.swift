
import SwiftUI

struct ContentView: View {
    
    var backgroundColor : Color = .green
    var fontTitle : Font = .largeTitle
    var FontSubTitle : Font = .title
    @State private var Title = "Introducing State"
    @State private var Subtitle = "Exploring State"
    var body: some View {
        ZStack {
                backgroundColor
                .opacity(0.6)
                .ignoresSafeArea()
            
            VStack {
                VStack(alignment: .leading){
                    Text(Title)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text(Subtitle)
                        .font(.title)
                }
                .onTapGesture {
                    if Title ==      "Introducing State"{
                        Title = "hello"
                        Subtitle = "Happy Coding"
                    }else{
                        Title = "Introducing State"
                        Subtitle = "Exploring State"
                    }
                }
                Spacer()
                
                HStack{
                    Image(systemName: "sunrise")
                        .imageScale(.large)
                    Image(systemName: "moon.zzz.fill")
                        .imageScale(.large)
                }
                .foregroundStyle(.black)
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
