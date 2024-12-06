//
//  LineTextField.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 6.12.2024.
//

import SwiftUI

struct LineTextField: View {
    
    @Binding var txt: String
    @State var title: String = "Title"
    @State var placholder: String = "Placholder"
    @State var keyboradType: UIKeyboardType = .default
    @State var isPassword: Bool = false
    
    var body: some View {
        VStack {
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            if (isPassword){
                SecureField(placholder, text: $txt)
            }else{
                TextField(placholder, text: $txt)
                    .keyboardType(keyboradType)
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
