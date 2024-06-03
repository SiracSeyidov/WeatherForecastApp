//
//  ForecastDetailView.swift
//  WeatherApp
//
//  Created by Sirac Seyidov on 30.05.2024.
//

import SwiftUI

struct ForecastDetailItem: View {
    var icon: String
    var value: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.title2)
            Text(value)
                .font(.title2)
        }
    }
}
