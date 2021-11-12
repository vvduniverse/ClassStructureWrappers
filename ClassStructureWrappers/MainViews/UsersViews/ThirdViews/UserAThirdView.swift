//
//  UserAThirdView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 10.11.2021.
//

import SwiftUI

struct UserAThirdView: View {
    
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
        .background(.orange)
    }
}

struct UserAThirdView_Previews: PreviewProvider {
    static var previews: some View {
        UserAThirdView(nextViewIsPresented: .constant(true), name: .constant(""), age: .constant(""))
    }
}
