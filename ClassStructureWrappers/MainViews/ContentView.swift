//
//  ContentView.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {     
            VStack(spacing: 35) {
                    NavigationLink(destination: UsersUIView()) { Text("All the users") }
                    NavigationLink(destination: UserAView()) { Text("NEXT A") }
                    NavigationLink(destination: UserBView()) { Text("NEXT B") }
                    NavigationLink(destination: UserCView()) { Text("NEXT C") }
                    NavigationLink(destination: UserDView()) { Text("NEXT D") }
                    NavigationLink(destination: UserEView()) { Text("NEXT E") }
                    NavigationLink(destination: UserFView()) { Text("NEXT F") }}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


