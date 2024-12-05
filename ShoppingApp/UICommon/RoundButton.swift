//
//  RoundButton.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 5.12.2024.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    var didTap: (() -> ())?
    
    var body: some View {
        Button {
            didTap?()
        }label: {
            Text(title)
                .font(.customfont(.semibold, fontSize: 18))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.primaryApp)
        .cornerRadius(20)
    }
}

#Preview {
    RoundButton()
        .padding(20)
}
