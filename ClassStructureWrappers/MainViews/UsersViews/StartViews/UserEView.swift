//
//  UserEView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 08.11.2021.
//

import SwiftUI

struct UserEView: View {
    
    @ObservedObject var user: UserE
    
    var body: some View {
        VStack {
            Text(" E-line Page 1")
            Divider()
            Text("Hello Great \(user.user.name) \(user.user.age) years old!!!")
            Text("")
            NavigationLink(destination: UserESecondView(user: user)) {
                Text("Next page")
            }
        }
    }
}

struct UserEView_Previews: PreviewProvider {
    static var previews: some View {
        UserEView(user: UserE())
    }
}
