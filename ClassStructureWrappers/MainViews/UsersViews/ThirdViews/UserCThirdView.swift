//
//  UserCThirdView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 12.11.2021.
//

import SwiftUI

struct UserCThirdView: View {
    
    @Binding var user: UserC
    
    @Binding var nextViewIsPresented: Bool
    
    @Binding var name: String
    @Binding var age: String
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Done") {
                    nextViewIsPresented.toggle()
                }
            }
            .padding(/*@START_MENU_TOKEN@*/[.top, .trailing]/*@END_MENU_TOKEN@*/)       
            Spacer()
            Text(" C-line Page 3")
            Divider()
            Text("Class user is: \(user.name) and age is: \(user.age)")
            Divider()
            Text("User is: \(name) and age is: \(age)")
            Spacer()
        }
        .background(.green)
    }
}

struct UserCThirdView_Previews: PreviewProvider {
    static var previews: some View {
        UserCThirdView(user: .constant(UserC()), nextViewIsPresented: .constant(true), name: .constant(""), age: .constant(""))
    }
}
