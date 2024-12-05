//
//  WelcomeView.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 2.12.2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                
                Text("Welcome\nto out store")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                
                Text("Ger your groceries in as fast as one hour")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundStyle(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                NavigationLink{
                    SignInView()
                }label:{
                    RoundButton(title: "Get Started"){
                        
                    }
                }
                
                Spacer()
                    .frame(height: 80)
            }
            .padding(.horizontal, 20)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden)   // eski kullanım navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WelcomeView()
        }
    }
}
