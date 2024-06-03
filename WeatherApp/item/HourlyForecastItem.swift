//
//  HourlyForecastView.swift
//  WeatherApp
//
//  Created by Sirac Seyidov on 30.05.2024.
//

import SwiftUI

struct HourlyForecastItem: View {
    var time: String
    var temperature: String
    var icon: String
    
    var body: some View {
        VStack {
            Text(time)
                .font(.headline)
            Image(systemName: icon)
                .font(.title)
            Text(temperature)
                .font(.title2)
        }
        .padding()
        .background(Color.white.opacity(0.2))
        .cornerRadius(20)
    }
}
