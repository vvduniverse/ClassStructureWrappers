//
//  UsersUIView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import SwiftUI

struct UsersUIView: View {
    
    let user1 = userA()
    let user2 = userB(name: "UserB", isHuman: true, age: 29)
    let user3 = userC()
    let user4 = userD(name: "UserD", isHuman: true, age: 55)
    let user5 = userE()
    let user6 = userF()
    
    var body: some View { 
        VStack{
            Group {
                Spacer()
                HStack {
                    Text("User name is \(user1.name) has lenth  \(user1.nameLenth)")
                    Text(user1.isHuman ? "Is human" : "Not a human")
                }
                Spacer()
                HStack {
                    Text("User name is \(user2.name) has lenth  \(user2.nameLenth)")
                    Text(user2.isHuman ? "Is human2" : "Not a human")
                }
                Spacer()
                HStack {
                    Text("User name is \(user3.name) has lenth  \(user3.nameLenth)")
                    Text(user3.isHuman ? "Is human" : "Not a human")
                }
                Spacer()
                HStack {
                    Text("User name is \(user4.name) has lenth  \(user4.nameLenth)")
                    Text(user4.isHuman ? "Is human" : "Not a human")
                }
                Spacer()
                HStack {
                    Text("User name is \(user5.user.name) has lenth  \(user5.user.nameLenth)")
                    Text(user5.user.isHuman ? "Is human" : "Not a human")
                }
            }
            Spacer()
            HStack {
                Text("User name is \(user6.user.name) has lenth  \(user6.user.nameLenth)")
                Text(user6.user.isHuman ? "Is human" : "Not a human")
            }
            Spacer()
        }
    }
}

struct UsersUIView_Previews: PreviewProvider {
    static var previews: some View {
        UsersUIView()
    }
}
