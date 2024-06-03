//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Sirac Seyidov on 30.05.2024.
//

import SwiftUI

struct WeatherView: View {
    @State private var selectedSegment = 0
    var segments = ["Today", "Tomorrow", "Next 7 Days"]
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                HStack {
                    Text("Stockholm, Sweden")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding()
                
                Text("Tue, Jun 30")
                    .font(.headline)
                    .padding(.bottom, 20)
                
                HStack(spacing: 10) {
                    Image(systemName: "cloud.sun.rain.fill")
                        .font(.system(size: 60))
                    VStack(alignment: .leading) {
                        Text("19°")
                            .font(.system(size: 60))
                            .fontWeight(.bold)
                        Text("Rainy")
                            .font(.title)
                    }
                    Spacer()
                }
                .padding()
                
                VStack(spacing: 10) {
                    InfoRow(icon: "umbrella.fill", label: "RainFall", value: "3cm")
                    InfoRow(icon: "wind", label: "Wind", value: "19km/h")
                    InfoRow(icon: "drop.fill", label: "Humidity", value: "64%")
                }
                .padding()
            }
            .background(Color.white.opacity(0.2))
            .cornerRadius(20)
            .padding()
            
            Spacer()
            
            NavigationLink(destination: Next7DaysView()){
                Text("Next 7 days")
            }
            
            Picker(selection: $selectedSegment, label: Text("")) {
                ForEach(0..<3) { index in
                    NavigationLink(destination: Next7DaysView()){
                        Text(self.segments[index]).tag(index)
                    }
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    HourlyForecastView(time: "10:00", temperature: "20°", icon: "cloud.sun.fill")
                    HourlyForecastView(time: "now", temperature: "19°", icon: "cloud.sun.fill")
                    HourlyForecastView(time: "13:00", temperature: "21°", icon: "sun.max.fill")
                    HourlyForecastView(time: "14:00", temperature: "20°", icon: "sun.max.fill")
                    HourlyForecastView(time: "15:00", temperature: "20°", icon: "cloud.fill")
                    HourlyForecastView(time: "16:00", temperature: "19°", icon: "cloud.fill")
                }
                .padding(.horizontal)
            }
            
            Spacer()
        }
        .background(Color.orange.opacity(0.2))
    }
}

#Preview {
    WeatherView()
}
