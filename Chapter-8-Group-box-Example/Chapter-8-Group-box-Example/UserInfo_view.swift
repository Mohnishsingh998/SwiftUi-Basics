//
//  UserInfo_view.swift
//  Chapter-8-Group-box-Example
//
//  Created by mohnishsingh yadav on 07/01/26.
//

import SwiftUI

struct UserInfo_view: View {
    let name : String
    let email : String
    let phone : String
    let address : String
    
    var body: some View {
        GroupBox{
            VStack(alignment: .leading){
                Text("Name : \(name)")
                Text("Email : \(email)")
                GroupBox{
                    VStack(alignment: .leading){
                        Text("Phone No : \(phone)")
                        Text("Address : \(address)")
                    }
                } label: {
                    Label("Contact info", systemImage: "phone.circle")
                }
                .padding(.vertical)
            }
        }label: {
            Label("UserInfo", systemImage: "person.crop.circle")
        }
        .padding()
    }
}

#Preview {
    UserInfo_view(
        name: "Jone Doe",
        email: "JhoneDOe@Gmail.com",
        phone: "9825302252",
        address: "New street the Jhon Vally"
    )
}
