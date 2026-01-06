//
//  RowItemView.swift
//  Chapter-6-Making-List
//
//  Created by mohnishsingh yadav on 06/01/26.
//

import SwiftUI

struct RowItem : View {
    let person : Person
    var body: some View {
        HStack {
            VStack(alignment : .leading, spacing: 3) {
                Text(person.name.capitalized)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                Text(person.hobby!.capitalized)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.orange)
            }
            Spacer()
            if let hobbyImage = person.hobbyImage {
                Image(systemName: hobbyImage)
                    .foregroundStyle(.red)
                    .padding()
                    .background(Circle().stroke(.green))
            }
        }
        .padding()
        .background(Color.black.cornerRadius(10))
        
    }
}

#Preview {
    RowItem(person: .init(
        name: "Oshi",
        hobby: "Badminton",
        hobbyImage: "figure.badminton"
    ))
    .padding()
}
