//
//  SignUpView.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 9.12.2024.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var mainVM = MainViewModel.shared
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
        }
        
        ScrollView {
            VStack {
                
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .padding(.bottom, .screenWidth * 0.1)
                
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
                
                LineTextField(title: "Email", placholder: "Enter your email address", txt: $mainVM.txtEmail, keyboradType: .emailAddress)
                    .padding(.bottom, .screenWidth *  0.07)
                
                LineSecureField(title: "Password", placholder: "Enter your password", txt: $mainVM.txtPassword, isShowPassword: $mainVM.isShowPassword)
                    .padding(.bottom, .screenWidth *  0.02)
                
                Button{
                    
                }label: {
                    Text("Forgot Password?")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundColor(.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, .screenWidth *  0.03)
                
                RoundButton(title: "Log In"){
                    mainVM.serviceCallLogin()
                }
                .padding(.bottom, .screenWidth *  0.05)
                
                NavigationLink {
                    SignUpView()
                }label: {
                    HStack{
                        Text("Don't have an account?")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.primaryText)
                        
                        Text("Sign Up")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.primaryApp)
                    }
                }
                
                
                
                
                Spacer()
            }
            .padding(.top, .topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
        }
        
        VStack{
            
            HStack{
                Button{
                    mode.wrappedValue.dismiss()
                }label:{
                    Image("back")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                }
                Spacer()
            }
            
            Spacer()
        }
        .padding(.top, .topInsets)
        .padding(.horizontal, 20)
        
        .navigationTitle("")
        .toolbar(.hidden)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    SignUpView()
}
