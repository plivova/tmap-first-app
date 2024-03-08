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
                    heart()
                    Text("hey girlie!")
                    heart()
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

// MARK: Components

private extension ContentView {
    func heart() -> some View {
        Image(systemName: "heart")
            .imageScale(.large)
            .foregroundStyle(.tint)
            .tint(Color.primaryGorgeousPink)
    }
}

#Preview {
    ContentView()
}
