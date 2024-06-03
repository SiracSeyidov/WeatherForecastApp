//
//  InfoRow.swift
//  WeatherApp
//
//  Created by Sirac Seyidov on 30.05.2024.
//

import SwiftUI

struct InfoItem: View {
    var icon: String
    var label: String
    var value: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.title2)
            Text(label)
                .font(.title2)
            Spacer()
            Text(value)
                .font(.title2)
        }
        .padding()
        .background(Color.white.opacity(0.2))
        .cornerRadius(10)
    }
}
