//
//  UserCView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 08.11.2021.
//

import SwiftUI

struct UserCView: View {
    
    let user = userC()
    
    var body: some View {
        VStack {
            Text(" C-line ")
            Divider()
            Text("Hello Great \(user.name) \(user.age) years old!!!")
            Text("")
             NavigationLink(destination: UserCSecondView()) {
                 Text("Next page")
             }
         }
    }
}

struct UserCView_Previews: PreviewProvider {
    static var previews: some View {
        UserCView()
    }
}
