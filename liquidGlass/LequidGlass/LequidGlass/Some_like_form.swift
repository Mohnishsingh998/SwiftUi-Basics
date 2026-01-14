import SwiftUI

struct Some_like_form: View {

    @State private var name: String = "Dogesh Bhai"
    @State private var toggle = false

    var offset: CGFloat {
        toggle ? 360 : 0
    }

    var body: some View {
        GlassEffectContainer {
            ZStack {
                Color.black
                    .ignoresSafeArea()

                Image(.dogInNature)
                    .resizable()
                    .scaledToFit()
                    .frame(
                        maxWidth: toggle ? .infinity : 0,
                        maxHeight: toggle ? .infinity : 0
                    )
                    .animation(.linear(duration: 0.5), value: toggle)

                VStack {
                    Text(name)
                        .multilineTextAlignment(.center)
                        .padding()
                        .glassEffect()
                        .offset(y: offset)
                        .animation(.linear(duration: 0.5), value: toggle)
                        .onHover { isHovering in
                            if isHovering {
                                name =  toggle ? "Hello" : "Dogesh Bhai!"
                            }
                        }
                        .onTapGesture {
                            name =  toggle ? "Hello" : "Dogesh Bhai!"
                        }
                }
            }
            .onTapGesture {
                withAnimation(.linear(duration: 0.5)) {
                    toggle.toggle()
                }
            }
        }
    }
}

#Preview {
    Some_like_form()
}
