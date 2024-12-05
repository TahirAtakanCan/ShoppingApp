//
//  CountryPickerUI.swift
//  ShoppingApp
//
//  Created by Tahir Atakan Can on 5.12.2024.
//

import SwiftUI
import CountryPicker

struct CountryPickerUI: UIViewControllerRepresentable {
    
    
    
    @Binding var country: Country?
    
    class Coordinator: NSObject, CountryPickerDelegate {
        
        func countryPicker(didSelect country: Country) {
            parent.country = country
        }
        
        
        var parent: CountryPickerUI
        
        init(_ parent: CountryPickerUI) {
            self.parent = parent
        }
        
        func countryPickerDidSelectCountry(_ countryPicker: CountryPickerViewController, country: Country) {
            print("Selected Country: \(country)")
        }
    }
    
    func makeUIViewController(context: Context) -> some CountryPickerViewController {
        
        let countryPicker =  CountryPickerViewController()
        countryPicker.selectedCountry = "TR"
        countryPicker.delegate = context.coordinator
        
        return countryPicker
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }

}

