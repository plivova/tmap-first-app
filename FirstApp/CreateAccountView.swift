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
    @State var checked = false
    @State private var showRules = false
    @State private var validForm = false
    @State private var entranceReady = false

    
    var body: some View {
        VStack {
            form()
            
            Spacer()
            
            VStack(spacing: 16) {
                HStack {
                    Toggle(isOn: $checked) {
                    }
                    .toggleStyle(CheckboxToggleStyle())
                    
                    HStack {
                        Text("I agree with the")
                        Button("club rules") {
                            showRules = true
                        }
                    }
                }
                
                Button("Create an account") {
                    entranceReady = true
                }
                .buttonStyle(.borderedProminent)
                .tint(Color.primaryGorgeousPink)
                .disabled(!validForm)
            }
        }
        .padding(.vertical, 30)
        .onChange(of: personName, { validate() })
        .onChange(of: checked, { validate() })
        .navigationDestination(isPresented: $entranceReady) {
            UserInformationView(name: personName, birthday: personBirthDate)
        }
        .sheet(isPresented: $showRules) {
            RulesPopupView()
                .presentationDetents([.medium, .large])
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
            
            TextField("Type your gorgeous name here", text: $personName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            
            HStack{
                Image(systemName: "birthday.cake")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .tint(Color.primaryGorgeousPink)
                
                Text("Date of birth:")
                
                DatePicker("", selection: $personBirthDate, displayedComponents: [.date])
                    .padding(.trailing, 20)
            }
            .padding(.horizontal, 20)
            
        }
        
    }
}

private extension CreateAccountView {
    struct RulesPopupView: View {
        var body: some View {
            VStack {
                HStack {
                    HeartIcon()
                    Text("Girlie club rules").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    HeartIcon()
                }
                .padding(.bottom, 30)
                .padding(.top, 40)
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("1. Always be kind and lift up one another")
                    Text("2. Wear that cute outfit")
                    Text("3. Tear down the patriarchy")
                    Text("4. Send each other pics of every cute puppy you find")
                }
                Spacer()
            }
        }
    }
}

private extension CreateAccountView {
    func isValid() -> Bool {
        checked && !personName.isEmpty
    }
    
    func validate() -> Void {
        if isValid() {
            validForm = true
        }
    }
}

#Preview {
    CreateAccountView()
}
