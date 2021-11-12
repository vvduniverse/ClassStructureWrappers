//
//  UserDView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 08.11.2021.
//

import SwiftUI

struct UserDView: View {
    
    @Binding var user: UserD
    
    var body: some View {
        VStack {
            Text(" D-line Page 1")
            Divider()
            Text("Hello Great \(user.name) \(user.age) years old!!!")
            Text("")
            NavigationLink(destination: UserDSecondView(user: $user)) {
                 Text("Next page")
             }
         }
    }
}

struct UserDView_Previews: PreviewProvider {
    static var previews: some View {
        UserDView(user: .constant(UserD(name: "", isHuman: true, age: 10)))
    }
}
