//
//  UserBView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 08.11.2021.
//

import SwiftUI

struct UserBView: View {
    
    let user = UserB(name: "UserB", isHuman: true, age: 44)
    
    var body: some View {
        VStack {
            Text(" B-line ")
            Divider()
            Text("Hello Great \(user.name) \(user.age) years old!!!")
            Text("")
             NavigationLink(destination: UserBSecondView()) {
                 Text("Next page")
             }
         }
    }
}

struct UserBView_Previews: PreviewProvider {
    static var previews: some View {
        UserBView()
    }
}
