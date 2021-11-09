//
//  UserDView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 08.11.2021.
//

import SwiftUI

struct UserDView: View {
    
    let user = UserD(name: "UserD", isHuman: true, age: 77)
    
    var body: some View {
        VStack {
            Text(" D-line ")
            Divider()
            Text("Hello Great \(user.name) \(user.age) years old!!!")
            Text("")
             NavigationLink(destination: UserDSecondView()) {
                 Text("Next page")
             }
         }
    }
}

struct UserDView_Previews: PreviewProvider {
    static var previews: some View {
        UserDView()
    }
}
