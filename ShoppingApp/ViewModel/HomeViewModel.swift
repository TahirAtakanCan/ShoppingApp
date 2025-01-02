//
//  HomeViewModel.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 2.01.2025.
//

import SwiftUI

class HomeViewModel: ObservableObject
{
    static var shared: HomeViewModel = HomeViewModel()
    
    @State var selectedTab: Int = 0
}

