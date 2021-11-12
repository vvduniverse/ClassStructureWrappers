//
//  Model.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import Foundation
// **********************************************
class UserA: ObservableObject {
    
    @Published var name = "userA0"
    @Published var isHuman = false
    @Published var age = 34
    
//    var nameLenth: Int {
//        name.count
//    }
}
// **********************************************
class UserB: ObservableObject {
    @Published var name: String
    @Published var isHuman: Bool
    @Published var age: Int
    
    var nameLenth: Int {
        name.count
    }
    
    init(name: String, isHuman: Bool, age: Int) {
        self.name = name
        self.isHuman = isHuman
        self.age = age
    }
}
// **********************************************
struct UserC {
    var name = "userC0"
    var isHuman = false
    var age = 23
    
    var nameLenth: Int {
        name.count
    }
}
// **********************************************
struct UserD {
    var name: String
    var isHuman: Bool
    var age: Int
    
    var nameLenth: Int {
        name.count
    }
}
// **********************************************
class UserE {
    var user = UserC()
    
    var lentValidation: Bool {
        user.nameLenth < 5
    }
}
// **********************************************
class UserF {
    var user = UserD(name: "userF0", isHuman: false, age: 45)
    
    var lentValidation: Bool {
        user.nameLenth < 5
    }
}
// **********************************************
