//
//  ContentView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var userA = UserA()
    @State private var userC = UserC()
    @State private var userD = UserD(name: "UserD0", isHuman: true, age: 55)
    @StateObject private var userE = UserE()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                NavigationLink(destination: UsersUIView(user: userA,
                                                        user3: $userC,
                                                        user4: $userD,
                                                        user5: userE) ) {
                    Text("All the users")
                }
                NavigationLink(destination: UserAView(user: userA)) { Text("NEXT A") }
                NavigationLink(destination: UserBView()) { Text("NEXT B") }
                NavigationLink(destination: UserCView(user: $userC)) { Text("NEXT C") }
                NavigationLink(destination: UserDView(user: $userD)) { Text("NEXT D") }
                NavigationLink(destination: UserEView(user: userE)) { Text("NEXT E") }
                NavigationLink(destination: UserFView()) { Text("NEXT F") }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


