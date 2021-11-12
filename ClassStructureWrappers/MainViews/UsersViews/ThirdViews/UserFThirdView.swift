//
//  UserFThirdView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 12.11.2021.
//

import SwiftUI

struct UserFThirdView: View {
    
    @EnvironmentObject var user: UserF
    
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
            Text("F-line Page 3")
            Divider()
            Text("Class user is: \(user.user.name) and age is: \(user.user.age)")
            Divider()
            Text("User is: \(name) and age is: \(age)")
            Spacer()
        }
        .background(.purple)
    }
}

struct UserFThirdView_Previews: PreviewProvider {
    static var previews: some View {
        UserFThirdView(nextViewIsPresented: .constant(true), name: .constant(""), age: .constant(""))
    }
}
