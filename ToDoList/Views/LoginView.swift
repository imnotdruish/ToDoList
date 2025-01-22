//
//  LoginView.swift
//  ToDoList
//
//  Created by Dan June on 1/21/25.
//

import SwiftUI

struct LoginView: View {
   
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get Things Done",
                           angle: 15,
                           background: .green)
                
                // Login Form
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .green) {
                        viewModel.login()
                    }
                    .padding()
                }
                
                // Create Account
                VStack {
                    Text("New Around Here?")
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                    .foregroundColor(Color.green)
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
