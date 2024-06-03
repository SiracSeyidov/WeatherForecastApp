//
//  Next7DaysView.swift
//  WeatherApp
//
//  Created by Sirac Seyidov on 30.05.2024.
//

import SwiftUI

struct Next7DaysView: View {
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Tomorrow")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        Text("22°")
                            .font(.title2)
                    }
                    HStack(spacing: 20) {
                        ForecastDetailRow(icon: "umbrella.fill", value: "1 cm")
                        ForecastDetailRow(icon: "wind", value: "15 km/h")
                        ForecastDetailRow(icon: "drop.fill", value: "50 %")
                    }
                }
                .padding()
                .background(Color.white.opacity(0.2))
                .cornerRadius(20)
                .padding(.bottom)
                
                ForecastRow(day: "Thursday", temperature: "21°", icon: "sun.max.fill")
                ForecastRow(day: "Friday", temperature: "24°", icon: "sun.max.fill")
                ForecastRow(day: "Saturday", temperature: "18°", icon: "cloud.sun.fill")
                ForecastRow(day: "Sunday", temperature: "12°", icon: "cloud.fill")
                ForecastRow(day: "Monday", temperature: "16°", icon: "cloud.rain.fill")
                ForecastRow(day: "Tuesday", temperature: "18°", icon: "cloud.rain.fill")
            }
            .padding()
            Spacer()
        }
        .background(Color.orange.opacity(0.2))
        .toolbar{
            ToolbarItemGroup(placement: .topBarLeading){
                Text("Next  7 days")
                    .padding()
            }
        }
    }
}
