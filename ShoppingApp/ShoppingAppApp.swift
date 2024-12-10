//
//  ShoppingAppApp.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 2.12.2024.
//

import SwiftUI

@main
struct ShoppingAppApp: App {
    
    @StateObject var mainVM = MainViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                
                if mainVM.isUserLogin {
                    MainTabView()
                }else {
                    WelcomeView()
                }
                
            }
        }
    }
}
