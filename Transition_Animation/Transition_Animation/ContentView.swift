import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Form{
                Section("Builtin-Transacction"){
                    NavigationLink("Move Transaction"){
                        Move_Tranisiton()
                    }
                    NavigationLink("Slide Transaction"){
                        Slide_transition_view()
                    }
                    NavigationLink("Asymetric Transaction"){
                        Assymetric_Trnasiton_view()
                    }
                    NavigationLink("Combined Transaction"){
                        Combined_Transition_view()
                    }
                }
                Section("Coustom-Transaction"){
                    NavigationLink(
                        "Rotation"
                    ){
                        Coutom_view()
                    }
                }
            }
            .navigationTitle("Transition")
        }
    }
}

#Preview {
    ContentView()
}
