//
//  CreateAccountView.swift
//  FirstApp
//
//  Created by Kateřina Plívová on 08.03.2024.
//

import SwiftUI

struct CreateAccountView: View {
    @State var personName: String = ""
    @State var personBirthDate: Date = Date()
    @State var checked: Bool = false
    
    var body: some View {
        VStack {
            form()
            
            NavigationLink("Create an account") {
                UserInformationView()
            }
            .buttonStyle(.borderedProminent)
            .tint(Color.primaryGorgeousPink)
            .padding(.top, 50)
            
        }
        
    }
    
}

// MARK: Components
private extension CreateAccountView {
    func form() -> some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .tint(Color.primaryGorgeousPink)
                
                Text("First name:")
            }
            .padding(.horizontal, 20)
            
            TextField("Name", text: $personName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            
            HStack {
                Image(systemName: "birthday.cake")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .tint(Color.primaryGorgeousPink)
                
                Text("Date of birth:")
            }
            .padding(.horizontal, 20)
            
            DatePicker("", selection: $personBirthDate, displayedComponents: [.date])
                .padding(.trailing, 20)
                .padding(.bottom, 20)
            
            
            HStack {
                Toggle(isOn: $checked) {
                }
                .toggleStyle(iOSCheckboxToggleStyle())
                
                Text("I agree with everything")
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
        
    }
}

#Preview {
    CreateAccountView()
}
