//
//  UserASecondView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 09.11.2021.
//

import SwiftUI

struct UserASecondView: View {
    
    let user = UserA()
    @State private var user1 = UserA()
    
    @State private var name = ""
    @State private var age = ""
    @State private var nextViewIsPresented = false
    
    var body: some View {
        VStack {
            Text(" A-line ")
            Divider()
            HStack {
                Text("Enter you name, plz.")
                TextField("\(user1.name)", text: $name)
                Button("Done") {
                    user1.name = name
//                    name = ""
                }
            }
            HStack {
                Text("Enter you age, plz.")
                TextField("\(user1.age)", text: $age)
                Button("Done") {
                    if Int(age) != nil  {
                        user1.age = Int(age)!
//                        age = ""
                    } else {
                        user1.age = 0
//                        age = ""
                    }
                }
            }
            Divider()
            Button("NEXT") {
                nextViewIsPresented = true
            }
            .sheet(isPresented: $nextViewIsPresented) {
                UserAThirdView(nextViewIsPresented: $nextViewIsPresented, name: $name, age: $age)
            }
        }.padding()

    }
}

struct UserASecondView_Previews: PreviewProvider {
    static var previews: some View {
        UserASecondView()
    }
}
