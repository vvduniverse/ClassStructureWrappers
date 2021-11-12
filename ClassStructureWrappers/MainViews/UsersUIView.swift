//
//  UsersUIView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import SwiftUI

struct UsersUIView: View {
    
    @ObservedObject var user: UserA
    @EnvironmentObject var user2: UserB    
    @Binding var user3: UserC
    @Binding var user4: UserD
    @ObservedObject var user5: UserE
    @EnvironmentObject var user6: UserF
    
    var body: some View {
        VStack(spacing: 45) {
            
            HStack {
                Text("User name is \(user.name) has lenth  \(user.age)")
                Text(user.isHuman ? "Is human" : "Not a human")
            }
            HStack {
                Text("User name is \(user2.name) has lenth  \(user2.age)")
                Text(user2.isHuman ? "Is human2" : "Not a human")
            }
            HStack {
                Text("User name is \(user3.name) has lenth  \(user3.age)")
                Text(user3.isHuman ? "Is human" : "Not a human")
            }
            HStack {
                Text("User name is \(user4.name) has lenth  \(user4.age)")
                Text(user4.isHuman ? "Is human" : "Not a human")
            }
            HStack {
                Text("User name is \(user5.user.name) has lenth  \(user5.user.age)")
                Text(user5.user.isHuman ? "Is human" : "Not a human")
            }
            HStack {
                Text("User name is \(user6.user.name) has lenth  \(user6.user.age)")
                Text(user6.user.isHuman ? "Is human" : "Not a human")
            }
        }
    }
}

struct UsersUIView_Previews: PreviewProvider {
    static var previews: some View {
        UsersUIView(user: UserA(), user3: .constant(UserC()), user4: .constant(UserD(name: "", isHuman: true, age: 22)), user5: UserE())
    }
}
