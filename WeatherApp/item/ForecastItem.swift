//
//  ForecastRow.swift
//  WeatherApp
//
//  Created by Sirac Seyidov on 30.05.2024.
//

import SwiftUI

struct ForecastItem: View {
    var day: String
    var temperature: String
    var icon: String
    
    var body: some View {
        HStack {
            Text(day)
                .font(.title2)
            Spacer()
            Text(temperature)
                .font(.title2)
            Image(systemName: icon)
                .font(.title2)
        }
        .padding()
        .background(Color.white.opacity(0.2))
        .cornerRadius(10)
        .padding(.bottom, 5)
    }
}
