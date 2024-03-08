//
//  HeartIcon.swift
//  FirstApp
//
//  Created by Kateřina Plívová on 08.03.2024.
//

import Foundation
import SwiftUI

struct HeartIcon: View {
    var body: some View {
        Image(systemName: "heart")
            .imageScale(.large)
            .foregroundStyle(.tint)
            .tint(Color.primaryGorgeousPink)
    }
}
