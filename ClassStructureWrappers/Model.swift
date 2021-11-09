//
//  Model.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import Foundation
// **********************************************
class userA {
    var name = "userA0"
    var isHuman = false
    var age = 34
    
    var nameLenth: Int {
        name.count
    }
}
// **********************************************
class userB {
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
struct userC {
    var name = "userC0"
    var isHuman = false
    var age = 23
    
    var nameLenth: Int {
        name.count
    }
}
// **********************************************
struct userD {
    var name: String
    var isHuman: Bool
    var age: Int
    
    var nameLenth: Int {
        name.count
    }
}
// **********************************************
class userE {
    var user = userC()
    
    var lentValidation: Bool {
        user.nameLenth < 5
    }
}
// **********************************************
class userF {
    var user = userD(name: "userF0", isHuman: false, age: 45)
    
    var lentValidation: Bool {
        user.nameLenth < 5
    }
}
// **********************************************
