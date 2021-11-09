//
//  UserAView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 08.11.2021.
//

import SwiftUI

struct UserAView: View {
    
    let user = userA()
    
    var body: some View {
       VStack {
           Text(" A-line ")
           Divider()
           Text("Hello Great \(user.name) \(user.age) years old!!!")
           Text("")
            NavigationLink(destination: UserASecondView()) {
                Text("Next page")
            }
        }
    }
}

struct UserAView_Previews: PreviewProvider {
    static var previews: some View {
        UserAView()
    }
}
