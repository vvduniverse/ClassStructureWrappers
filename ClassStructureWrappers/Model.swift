//
//  Model.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import Foundation
// **********************************************
class UserA {
    var name = "userA0"
    var isHuman = false
    var age = 34
    
    var nameLenth: Int {
        name.count
    }
}
// **********************************************
class UserB {
    var name: String
    var isHuman: Bool
    var age: Int
    
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
