//
//  UserEView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 08.11.2021.
//

import SwiftUI

struct UserEView: View {
    
    let user = userE()
    
    var body: some View {
        VStack {
            Text(" E-line ")
            Divider()
            Text("Hello Great \(user.user.name) \(user.user.age) years old!!!")
            Text("")
             NavigationLink(destination: UserESecondView()) {
                 Text("Next page")
             }
         }
    }
}

struct UserEView_Previews: PreviewProvider {
    static var previews: some View {
        UserEView()
    }
}
