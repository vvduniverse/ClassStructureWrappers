//
//  UserFView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 08.11.2021.
//

import SwiftUI

struct UserFView: View {
    
    @EnvironmentObject var user: UserF
    
    var body: some View {
        VStack {
            Text(" F-line Page 1")
            Divider()
            Text("Hello Great \(user.user.name) \(user.user.age) years old!!!")
            Text("")
            NavigationLink(destination: UserFSecondView()) {
                Text("Next page")
            }
        }
    }
}

struct UserFView_Previews: PreviewProvider {
    static var previews: some View {
        UserFView()
    }
}
