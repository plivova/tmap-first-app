//
//  ContentView.swift
//  FirstApp
//
//  Created by Kateřina Plívová on 07.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var createAccountPresented = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    HeartIcon()
                    Text("hey girlie!")
                    HeartIcon()
                }
                    .font(.title3)
                Button("Join the girlies!") {
                    createAccountPresented = true
                }
                .buttonStyle(.borderedProminent)
                .padding(.top, 50)
                .tint(Color.primaryGorgeousPink)
                
            }
            .padding()
            .navigationDestination(isPresented: $createAccountPresented) {
                CreateAccountView()
            }
        }
    }
}



#Preview {
    ContentView()
}
