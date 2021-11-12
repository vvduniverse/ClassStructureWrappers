//
//  UserDSecondView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 09.11.2021.
//

import SwiftUI

struct UserDSecondView: View {
    
    @State private var user = UserD(name: "UserD2", isHuman: true, age: 30)
    
    @State private var name = ""
    @State private var age = ""
    @State private var nextViewIsPresented = false
    
    var body: some View {
        VStack {
            Text(" D-line ")
            Divider()
            HStack {
                Text("Enter you name, plz.")
                TextField("\(user.name)", text: $name)
                Button("Done") {
                    user.name = name
                    name = ""
                }
            }
            HStack {
                Text("Enter you age, plz.")
                TextField("\(user.age)", text: $age)
                Button("Done") {
                    if Int(age) != nil  {
                        user.age = Int(age)!
                        age = ""
                    } else {
                        user.age = 0
                        age = ""
                    }
                }
            }
            Button("NEXT") {
                nextViewIsPresented = true
            }
            .sheet(isPresented: $nextViewIsPresented) {
                UserDThirdView(nextViewIsPresented: $nextViewIsPresented, name: $name, age: $age)
            }
        }.padding()
    }
}

struct UserDSecondView_Previews: PreviewProvider {
    static var previews: some View {
        UserDSecondView()
    }
}
