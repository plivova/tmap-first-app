//
//  ContentView.swift
//  FirstApp
//
//  Created by Kateřina Plívová on 07.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("slay girlie!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
