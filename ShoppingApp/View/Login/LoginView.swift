//
//  LoginView.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 6.12.2024.
//

import SwiftUI

struct LoginView: View {
    
    // Burada sonradan kaldırılmış bir özellik koydum. Daha sonra değiştirebilirim.
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @StateObject var loginVM: MainViewModel = MainViewModel()
    
    
    var body: some View {
        ZStack {
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack {
                
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .padding(.bottom, .screenWidth * 0.12)
                
                Text("Loging")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                
                Text("Enter your emails and password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                LineTextField(title: "Email", placholder: "Enter your email address", txt: $loginVM.txtEmail, keyboradType: .emailAddress)
                    .padding(.bottom, .screenWidth *  0.07)
                
                LineSecureField(title: "Password", placholder: "Enter your password", txt: $loginVM.txtPassword, isShowPassword: $loginVM.isShowPassword)
                    
                
                
                Spacer()
            }
            .padding(.top, .topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            
            VStack {
                
                HStack{
                    Button{
                        mode.wrappedValue.dismiss()
                    }label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
                
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden)
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
