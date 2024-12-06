//
//  MainViewModel.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 6.12.2024.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var shared: MainViewModel = MainViewModel()
    
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    @Published var isShowPassword: Bool = false
    
}
