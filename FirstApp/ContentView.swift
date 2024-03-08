//
//  ContentView.swift
//  FirstApp
//
//  Created by Kateřina Plívová on 07.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    HeartIcon()
                    Text("hey girlie!")
                    HeartIcon()
                }
                    .font(.title3)
                NavigationLink("Join the girlies!") {
                    CreateAccountView()
                }
                .buttonStyle(.borderedProminent)
                .padding(.top, 50)
                .tint(Color.primaryGorgeousPink)
                
            }
            .padding()
        }
    }
}



#Preview {
    ContentView()
}
