//
//  UserASecondView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 09.11.2021.
//

import SwiftUI

struct UserASecondView: View {
    
    let user = UserA()
    
    @State private var name = ""
    @State private var age = ""
    
    var body: some View {
        VStack {
            Text(" A-line ")
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
        }.padding()

    }
}

struct UserASecondView_Previews: PreviewProvider {
    static var previews: some View {
        UserASecondView()
    }
}
