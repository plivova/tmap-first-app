//
//  UserInformationView.swift
//  FirstApp
//
//  Created by Kateřina Plívová on 08.03.2024.
//

import SwiftUI

struct UserInformationView: View {
    let name: String
    let birthday: Date
    
    var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.setLocalizedDateFormatFromTemplate("MMMMd")
        return dateFormatter
    } ()
    
    var body: some View {
        VStack {
            HStack {
                HeartIcon()
                Text("Hello, \(name)!")
                    .font(.title)
                HeartIcon()
            }
            
            VStack {
                Text("You set your birthday to \(dateFormatter.string(from: birthday)).")
                Text("Celebrate with all the girlies!")
            }
            .padding()

        }
        .padding()
        .onAppear {
            print("UserInformationView did appear")
        }
        .onDisappear {
            print("UserInformationView did disappear")
        }
    }
}

#Preview {
    UserInformationView(name: "beautiful", birthday: Date())
}
