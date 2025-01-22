//
//  RegisterView.swift
//  ToDoList
//
//  Created by Dan June on 1/21/25.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        HeaderView(title: "Register",
                   subtitle: "Start Organizing Todos",
                   angle: -15,
                   background: .blue)

        Form {
            TextField("Full Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled(true)
            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled(true)
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            

            TLButton(title: "Create Account", background: .blue) {
                viewModel.register()
            }
            .padding()
        }
        Spacer()
    }
}

#Preview {
    RegisterView()
}
