//
//  UserDThirdView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 12.11.2021.
//

import SwiftUI

struct UserDThirdView: View {
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
            Text(" A-line ")
            Divider()
            Text("User is: \(name) and age is: \(age)")
            Spacer()
        }
        .background(.blue)
    }
}

struct UserDThirdView_Previews: PreviewProvider {
    static var previews: some View {
        UserDThirdView(nextViewIsPresented: .constant(true), name: .constant(""), age: .constant(""))
    }
}
