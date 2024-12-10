//
//  UserModel.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 10.12.2024.
//

import SwiftUI

struct UserModel: Identifiable, Equatable{
    
    var id: Int = 0
    var username: String = ""
    var name: String = ""
    var email: String = ""
    var mobile: String = ""
    var mobileCode: String = ""
    var authToken: String = ""
    
    init(dict: NSDictionary) {
        self.id = dict.value(forKey: "user_id") as? Int ?? 0
        self.username = dict["username"] as? String ?? ""
        self.name = dict["name"] as? String ?? ""
        self.email = dict["email"] as? String ?? ""
        self.mobile = dict["mobile"] as? String ?? ""
    }
    
    static func == (lhs: UserModel, rhs: UserModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    
}

