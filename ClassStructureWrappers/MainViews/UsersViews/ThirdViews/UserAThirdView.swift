//
//  UserAThirdView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 10.11.2021.
//

import SwiftUI

struct UserAThirdView: View {
    
    @ObservedObject var user: UserA
    
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
            Text(" A-line Page 3")
            Divider()
            Text("Class user is: \(user.name) and age is: \(user.age)")
            Divider()
            Text("User is: \(name) and age is: \(age)")
            Spacer()
        }
        .background(.orange)
    }
}

struct UserAThirdView_Previews: PreviewProvider {
    static var previews: some View {
        UserAThirdView(user: UserA(), nextViewIsPresented: .constant(false), name: .constant(""), age: .constant(""))
    }
}
