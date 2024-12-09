//
//  LineTextField.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 6.12.2024.
//

import SwiftUI

struct LineTextField: View {
    @State var title: String = "Title"
    @State var placholder: String = "Placholder"
    @Binding var txt: String
    @State var keyboradType: UIKeyboardType = .default
    @State var isPassword: Bool = false
    
    var body: some View {
        VStack {
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
        
                TextField(placholder, text: $txt)
                    .keyboardType(keyboradType)
                    .autocorrectionDisabled(true)
                    .frame(height: 40)
            
            
            Divider()
        }
    }
}

struct LineSecureField: View {
    
    @State var title: String = "Title"
    @State var placholder: String = "Placholder"
    @Binding var txt: String
    @Binding var isShowPassword: Bool
 
    var body: some View {
        VStack {
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            if (isShowPassword){
                TextField(placholder, text: $txt)
                    .autocorrectionDisabled(true)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .frame(height: 40)

            }else{
                SecureField(placholder, text: $txt)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .frame(height: 40)
                
            }
            
            Divider()
        }
    }
}



struct LineTextField_Previews: PreviewProvider {
    @State static var txt: String = ""
    static var previews: some View{
        LineTextField(txt: $txt)
            .padding(20)
    }
}
