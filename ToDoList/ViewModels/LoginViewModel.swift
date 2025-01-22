//
//  LoginViewModel.swift
//  ToDoList
//
//  Created by Dan June on 1/21/25.
//

import SwiftUI
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage = ""
    
    init() {}
    
    
    func login() {
        
        guard validate() else {
            return
        }
        
        // Try Log In
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
     
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill it all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Invalid email format"
            return false
        }
        
        return true
    }
    
}
