//
//  Sf_Symbol_Animation_Trancition.swift
//  SF-Symbol-Animation
//
//  Created by mohnishsingh yadav on 29/01/26.
//

import SwiftUI

struct Sf_Symbol_Animation_Trancition: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        ZStack {
            // Background image (ensure an asset named "puppy" exists)
            Image("puppy")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(Color.black.opacity(0.3))
                .accessibilityHidden(true)

            VStack(spacing: 20) {
                Image(systemName: "pawprint.fill")
                    .font(.system(size: 56, weight: .bold))
                    .foregroundStyle(.white)
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 6)

                Text("Welcome")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)

                VStack(spacing: 12) {
                    HStack(spacing: 10) {
                        Image(systemName: "envelope.fill")
                            .foregroundStyle(.white.opacity(0.9))
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .textContentType(.username)
                            .textInputAutocapitalization(.never)
                            .autocorrectionDisabled()
                    }
                    .padding(12)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .stroke(.white.opacity(0.25), lineWidth: 1)
                    )

                    HStack(spacing: 10) {
                        Image(systemName: "lock.fill")
                            .foregroundStyle(.white.opacity(0.9))
                        SecureField("Password", text: $password)
                            .textContentType(.password)
                    }
                    .padding(12)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .stroke(.white.opacity(0.25), lineWidth: 1)
                    )
                }

                Button(action: signIn) {
                    Text("Sign In")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .fill(.white)
                        )
                        .foregroundStyle(.black)
                }
                .disabled(email.isEmpty || password.isEmpty)
                .opacity((email.isEmpty || password.isEmpty) ? 0.6 : 1)
            }
            .padding(24)
            .background(
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(.ultraThinMaterial)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24, style: .continuous)
                            .stroke(.white.opacity(0.25), lineWidth: 1)
                    )
            )
            .padding(.horizontal, 24)
            .shadow(color: .black.opacity(0.35), radius: 20, x: 0, y: 12)
        }
    }

    private func signIn() {
        // Minimal working action; plug in your logic here
        print("Signing in with", email, password)
    }
}

#Preview {
    Sf_Symbol_Animation_Trancition()
}
