//
//  UserCView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 08.11.2021.
//

import SwiftUI

struct UserCView: View {
    
    @Binding var user: UserC
    
    var body: some View {
        VStack {
            Text(" C-line Page 1")
            Divider()
            Text("Hello Great \(user.name) \(user.age) years old!!!")
            Text("")
            NavigationLink(destination: UserCSecondView(user: $user)) {
                 Text("Next page")
             }
         }
    }
}

struct UserCView_Previews: PreviewProvider {
    static var previews: some View {
        UserCView(user: .constant(UserC()))
    }
}
