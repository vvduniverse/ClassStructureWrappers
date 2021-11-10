//
//  UsersUIView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import SwiftUI

struct UsersUIView: View {
    
    let user1 = UserA()
    let user2 = UserB(name: "UserB", isHuman: true, age: 29)
    let user3 = UserC()
    let user4 = UserD(name: "UserD", isHuman: true, age: 55)
    let user5 = UserE()
    let user6 = UserF()
    
    var body: some View {
        VStack(spacing: 45) {
            
            HStack {
                Text("User name is \(user1.name) has lenth  \(user1.nameLenth)")
                Text(user1.isHuman ? "Is human" : "Not a human")
            }
            HStack {
                Text("User name is \(user2.name) has lenth  \(user2.nameLenth)")
                Text(user2.isHuman ? "Is human2" : "Not a human")
            }
            HStack {
                Text("User name is \(user3.name) has lenth  \(user3.nameLenth)")
                Text(user3.isHuman ? "Is human" : "Not a human")
            }
            HStack {
                Text("User name is \(user4.name) has lenth  \(user4.nameLenth)")
                Text(user4.isHuman ? "Is human" : "Not a human")
            }
            HStack {
                Text("User name is \(user5.user.name) has lenth  \(user5.user.nameLenth)")
                Text(user5.user.isHuman ? "Is human" : "Not a human")
            }
            HStack {
                Text("User name is \(user6.user.name) has lenth  \(user6.user.nameLenth)")
                Text(user6.user.isHuman ? "Is human" : "Not a human")
            }
        }
    }
}

struct UsersUIView_Previews: PreviewProvider {
    static var previews: some View {
        UsersUIView()
    }
}
