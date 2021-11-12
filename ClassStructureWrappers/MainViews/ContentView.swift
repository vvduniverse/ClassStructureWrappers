//
//  ContentView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var userA = UserA()
//    @StateObject private var name = UserA()
//    @StateObject private var age = UserA()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                NavigationLink(destination: UsersUIView(user: userA)) { Text("All the users") }
                NavigationLink(destination: UserAView(user: userA)) { Text("NEXT A") }
                NavigationLink(destination: UserBView()) { Text("NEXT B") }
                NavigationLink(destination: UserCView()) { Text("NEXT C") }
                NavigationLink(destination: UserDView()) { Text("NEXT D") }
                NavigationLink(destination: UserEView()) { Text("NEXT E") }
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


