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
            
            VStack {
                Group {
                    NavigationLink(destination: UsersUIView()) { Text("All the users") }
                    Text("")
                    NavigationLink(destination: UserAView()) { Text("NEXT A") }
                    Text("")
                    NavigationLink(destination: UserBView()) { Text("NEXT B") }
                    Text("")
                    NavigationLink(destination: UserCView()) { Text("NEXT C") }
                    Text("")
                    NavigationLink(destination: UserDView()) { Text("NEXT D") }
                    Text("")
                }
                Group {
                    NavigationLink(destination: UserEView()) { Text("NEXT E") }
                    Text("")
                    NavigationLink(destination: UserFView()) { Text("NEXT F") }}
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


