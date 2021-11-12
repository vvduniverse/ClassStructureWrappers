//
//  UserESecondView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 09.11.2021.
//

import SwiftUI

struct UserESecondView: View {
    
    @ObservedObject var user: UserE
    
    @State private var name = ""
    @State private var age = ""
    @State private var nextViewIsPresented = false
    
    var body: some View {
        VStack {
            Text(" E-line Page 2")
            Divider()
            Text("Name: \(user.user.name), age: \(user.user.age)")
            Divider()
            HStack {
                Text("Enter you name, plz.")
                TextField("\(user.user.name)", text: $name)
                Button("Done") {
                    user.user.name = name
                    name = ""
                }
            }
            HStack {
                Text("Enter you age, plz.")
                TextField("\(user.user.age)", text: $age)
                Button("Done") {
                    if Int(age) != nil  {
                        user.user.age = Int(age)!
                        age = ""
                    } else {
                        user.user.age = 0
                        age = ""
                    }
                }
            }
            Button("NEXT") {
                nextViewIsPresented = true
            }
            .sheet(isPresented: $nextViewIsPresented) {
                UserEThirdView(user: user, nextViewIsPresented: $nextViewIsPresented, name: $name, age: $age)
            }
        }.padding()
    }
}

struct UserESecondView_Previews: PreviewProvider {
    static var previews: some View {
        UserESecondView(user: UserE())
    }
}
