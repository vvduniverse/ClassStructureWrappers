//
//  ClassStructureWrappersApp.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import SwiftUI

@main
struct ClassStructureWrappersApp: App {
    
    @StateObject private var user = UserB(name: "UserB0", isHuman: true, age: 29)
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(user)
        }
    }
}
