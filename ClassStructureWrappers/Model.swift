//
//  Model.swift
//  ClassStructureWrappers
//
//  Created by Vahtee Boo on 07.11.2021.
//

import Foundation
// **********************************************
class userA {
    var name = ""
    var isHuman = false
    
    var nameLenth: Int {
        name.count
    }
}
// **********************************************
class userB {
    var name: String
    var isHuman: Bool
    
    var nameLenth: Int {
        name.count
    }
    
    init(name: String, isHuman: Bool) {
        self.name = name
        self.isHuman = isHuman
    }
}
// **********************************************
struct userC {
    var name = ""
    var isHuman = false
    
    var nameLenth: Int {
        name.count
    }
}
// **********************************************
struct userD {
    var name: String
    var isHuman: Bool
    
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
    var user = userD(name: "", isHuman: false)
    
    var lentValidation: Bool {
        user.nameLenth < 5
    }
}
// **********************************************
