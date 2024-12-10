//
//  MainTabView.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 10.12.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        ZStack {
            
            VStack {
                //Spacer()
                
                
                HStack {
                    Button{
                        MainViewModel.shared.isUserLogin = false
                    }label: {
                        Text("LogOut")
                    }
                    
                }
            }
        }
        .navigationTitle("")
        .toolbar(.hidden)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}


struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
