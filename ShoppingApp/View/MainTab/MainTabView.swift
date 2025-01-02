//
//  MainTabView.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 10.12.2024.
//

import SwiftUI

struct MainTabView: View {
    
    @StateObject var homeVM = HomeViewModel.shared
    
    var body: some View {
        ZStack {
            
            VStack {
                //Spacer()
                TabView(selection: $homeVM.selectedTab){
                    HomeView().tag(0)
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
