//
//  UIKitExtension.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 9.12.2024.
//

import Foundation


extension String {
    
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        
        return emailTest.evaluate(with: self)
    }
    
}
